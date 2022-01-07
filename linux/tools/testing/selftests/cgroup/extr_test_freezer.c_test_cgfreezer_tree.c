
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_check_frozen (char*,int) ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 scalar_t__ cg_freeze_nowait (char*,int) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 char* cg_name (char const*,char*) ;
 int cg_run_nowait (char*,int ,int *) ;
 scalar_t__ cg_wait_for_proc_count (char*,int) ;
 int child_fn ;
 int free (char*) ;

__attribute__((used)) static int test_cgfreezer_tree(const char *root)
{
 char *cgroup[10] = {0};
 int ret = KSFT_FAIL;
 int i;

 cgroup[0] = cg_name(root, "cg_test_tree_A");
 if (!cgroup[0])
  goto cleanup;

 cgroup[1] = cg_name(cgroup[0], "B");
 if (!cgroup[1])
  goto cleanup;

 cgroup[2] = cg_name(cgroup[1], "C");
 if (!cgroup[2])
  goto cleanup;

 cgroup[3] = cg_name(cgroup[1], "D");
 if (!cgroup[3])
  goto cleanup;

 cgroup[4] = cg_name(cgroup[0], "E");
 if (!cgroup[4])
  goto cleanup;

 cgroup[5] = cg_name(cgroup[4], "F");
 if (!cgroup[5])
  goto cleanup;

 cgroup[6] = cg_name(cgroup[5], "G");
 if (!cgroup[6])
  goto cleanup;

 cgroup[7] = cg_name(cgroup[6], "H");
 if (!cgroup[7])
  goto cleanup;

 cgroup[8] = cg_name(cgroup[0], "I");
 if (!cgroup[8])
  goto cleanup;

 cgroup[9] = cg_name(cgroup[0], "K");
 if (!cgroup[9])
  goto cleanup;

 for (i = 0; i < 10; i++)
  if (cg_create(cgroup[i]))
   goto cleanup;

 cg_run_nowait(cgroup[2], child_fn, ((void*)0));
 cg_run_nowait(cgroup[7], child_fn, ((void*)0));
 cg_run_nowait(cgroup[9], child_fn, ((void*)0));
 cg_run_nowait(cgroup[9], child_fn, ((void*)0));
 cg_run_nowait(cgroup[9], child_fn, ((void*)0));






 if (cg_wait_for_proc_count(cgroup[2], 1) ||
     cg_wait_for_proc_count(cgroup[7], 1) ||
     cg_wait_for_proc_count(cgroup[9], 3))
  goto cleanup;




 if (cg_freeze_wait(cgroup[1], 1))
  goto cleanup;




 if (cg_freeze_wait(cgroup[5], 1))
  goto cleanup;




 if (cg_freeze_wait(cgroup[6], 1))
  goto cleanup;




 if (cg_check_frozen(cgroup[0], 0))
  goto cleanup;

 if (cg_check_frozen(cgroup[4], 0))
  goto cleanup;




 if (cg_freeze_wait(cgroup[0], 1))
  goto cleanup;

 if (cg_check_frozen(cgroup[1], 1))
  goto cleanup;

 if (cg_check_frozen(cgroup[4], 1))
  goto cleanup;




 if (cg_freeze_nowait(cgroup[1], 0))
  goto cleanup;

 if (cg_freeze_nowait(cgroup[5], 0))
  goto cleanup;

 if (cg_freeze_nowait(cgroup[6], 0))
  goto cleanup;




 if (cg_check_frozen(cgroup[2], 1))
  goto cleanup;

 if (cg_check_frozen(cgroup[7], 1))
  goto cleanup;




 if (cg_freeze_wait(cgroup[0], 0))
  goto cleanup;

 if (cg_check_frozen(cgroup[2], 0))
  goto cleanup;

 if (cg_check_frozen(cgroup[9], 0))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 for (i = 9; i >= 0 && cgroup[i]; i--) {
  cg_destroy(cgroup[i]);
  free(cgroup[i]);
 }

 return ret;
}
