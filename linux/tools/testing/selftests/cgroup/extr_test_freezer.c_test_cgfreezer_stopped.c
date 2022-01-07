
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 int SIGSTOP ;
 scalar_t__ cg_check_frozen (char*,int) ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 char* cg_name (char const*,char*) ;
 int cg_run_nowait (char*,int ,int *) ;
 scalar_t__ cg_wait_for_proc_count (char*,int) ;
 int child_fn ;
 int free (char*) ;
 scalar_t__ kill (int,int ) ;
 scalar_t__ proc_check_stopped (int) ;

__attribute__((used)) static int test_cgfreezer_stopped(const char *root)
{
 int pid, ret = KSFT_FAIL;
 char *cgroup = ((void*)0);

 cgroup = cg_name(root, "cg_test_stopped");
 if (!cgroup)
  goto cleanup;

 if (cg_create(cgroup))
  goto cleanup;

 pid = cg_run_nowait(cgroup, child_fn, ((void*)0));

 if (cg_wait_for_proc_count(cgroup, 1))
  goto cleanup;

 if (kill(pid, SIGSTOP))
  goto cleanup;

 if (cg_check_frozen(cgroup, 0))
  goto cleanup;

 if (cg_freeze_wait(cgroup, 1))
  goto cleanup;

 if (cg_freeze_wait(cgroup, 0))
  goto cleanup;

 if (proc_check_stopped(pid))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (cgroup)
  cg_destroy(cgroup);
 free(cgroup);
 return ret;
}
