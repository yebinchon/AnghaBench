
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_check_frozen (char*,int) ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 char* cg_name (char const*,char*) ;
 int cg_run_nowait (char*,int ,int *) ;
 scalar_t__ cg_wait_for_proc_count (char*,int) ;
 int child_fn ;
 int free (char*) ;

__attribute__((used)) static int test_cgfreezer_simple(const char *root)
{
 int ret = KSFT_FAIL;
 char *cgroup = ((void*)0);
 int i;

 cgroup = cg_name(root, "cg_test_simple");
 if (!cgroup)
  goto cleanup;

 if (cg_create(cgroup))
  goto cleanup;

 for (i = 0; i < 100; i++)
  cg_run_nowait(cgroup, child_fn, ((void*)0));

 if (cg_wait_for_proc_count(cgroup, 100))
  goto cleanup;

 if (cg_check_frozen(cgroup, 0))
  goto cleanup;

 if (cg_freeze_wait(cgroup, 1))
  goto cleanup;

 if (cg_freeze_wait(cgroup, 0))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (cgroup)
  cg_destroy(cgroup);
 free(cgroup);
 return ret;
}
