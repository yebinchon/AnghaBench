
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_check_frozen (char*,int) ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 scalar_t__ cg_enter_and_wait_for_frozen (char*,int,int) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 char* cg_name (char const*,char*) ;
 int cg_run_nowait (char*,int ,int *) ;
 scalar_t__ cg_wait_for_proc_count (char*,int) ;
 int child_fn ;
 int free (char*) ;

__attribute__((used)) static int test_cgfreezer_migrate(const char *root)
{
 int ret = KSFT_FAIL;
 char *cgroup[2] = {0};
 int pid;

 cgroup[0] = cg_name(root, "cg_test_migrate_A");
 if (!cgroup[0])
  goto cleanup;

 cgroup[1] = cg_name(root, "cg_test_migrate_B");
 if (!cgroup[1])
  goto cleanup;

 if (cg_create(cgroup[0]))
  goto cleanup;

 if (cg_create(cgroup[1]))
  goto cleanup;

 pid = cg_run_nowait(cgroup[0], child_fn, ((void*)0));
 if (pid < 0)
  goto cleanup;

 if (cg_wait_for_proc_count(cgroup[0], 1))
  goto cleanup;




 if (cg_freeze_wait(cgroup[1], 1))
  goto cleanup;

 if (cg_enter_and_wait_for_frozen(cgroup[1], pid, 1))
  goto cleanup;

 if (cg_check_frozen(cgroup[0], 0))
  goto cleanup;




 if (cg_enter_and_wait_for_frozen(cgroup[0], pid, 0))
  goto cleanup;

 if (cg_check_frozen(cgroup[1], 1))
  goto cleanup;




 if (cg_freeze_wait(cgroup[0], 1))
  goto cleanup;

 if (cg_enter_and_wait_for_frozen(cgroup[1], pid, 1))
  goto cleanup;

 if (cg_check_frozen(cgroup[0], 1))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (cgroup[0])
  cg_destroy(cgroup[0]);
 free(cgroup[0]);
 if (cgroup[1])
  cg_destroy(cgroup[1]);
 free(cgroup[1]);
 return ret;
}
