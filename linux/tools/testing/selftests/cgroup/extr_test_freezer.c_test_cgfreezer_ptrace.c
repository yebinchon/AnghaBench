
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int KSFT_FAIL ;
 int KSFT_PASS ;
 int PTRACE_DETACH ;
 int PTRACE_GETSIGINFO ;
 int PTRACE_INTERRUPT ;
 int PTRACE_SEIZE ;
 scalar_t__ cg_check_frozen (char*,int) ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 char* cg_name (char const*,char*) ;
 int cg_run_nowait (char*,int ,int *) ;
 scalar_t__ cg_wait_for_proc_count (char*,int) ;
 int child_fn ;
 int free (char*) ;
 scalar_t__ ptrace (int ,int,int *,int *) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static int test_cgfreezer_ptrace(const char *root)
{
 int ret = KSFT_FAIL;
 char *cgroup = ((void*)0);
 siginfo_t siginfo;
 int pid;

 cgroup = cg_name(root, "cg_test_ptrace");
 if (!cgroup)
  goto cleanup;

 if (cg_create(cgroup))
  goto cleanup;

 pid = cg_run_nowait(cgroup, child_fn, ((void*)0));
 if (pid < 0)
  goto cleanup;

 if (cg_wait_for_proc_count(cgroup, 1))
  goto cleanup;

 if (cg_freeze_wait(cgroup, 1))
  goto cleanup;

 if (ptrace(PTRACE_SEIZE, pid, ((void*)0), ((void*)0)))
  goto cleanup;

 if (ptrace(PTRACE_INTERRUPT, pid, ((void*)0), ((void*)0)))
  goto cleanup;

 waitpid(pid, ((void*)0), 0);





 if (cg_check_frozen(cgroup, 1))
  goto cleanup;

 if (ptrace(PTRACE_GETSIGINFO, pid, ((void*)0), &siginfo))
  goto cleanup;

 if (ptrace(PTRACE_DETACH, pid, ((void*)0), ((void*)0)))
  goto cleanup;

 if (cg_check_frozen(cgroup, 1))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (cgroup)
  cg_destroy(cgroup);
 free(cgroup);
 return ret;
}
