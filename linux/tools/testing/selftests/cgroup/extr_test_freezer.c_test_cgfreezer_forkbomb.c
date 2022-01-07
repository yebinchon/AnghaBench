
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 scalar_t__ cg_killall (char*) ;
 char* cg_name (char const*,char*) ;
 int cg_run_nowait (char*,int ,int *) ;
 scalar_t__ cg_wait_for_proc_count (char*,int ) ;
 int forkbomb_fn ;
 int free (char*) ;
 int usleep (int) ;

__attribute__((used)) static int test_cgfreezer_forkbomb(const char *root)
{
 int ret = KSFT_FAIL;
 char *cgroup = ((void*)0);

 cgroup = cg_name(root, "cg_forkbomb_test");
 if (!cgroup)
  goto cleanup;

 if (cg_create(cgroup))
  goto cleanup;

 cg_run_nowait(cgroup, forkbomb_fn, ((void*)0));

 usleep(100000);

 if (cg_freeze_wait(cgroup, 1))
  goto cleanup;

 if (cg_killall(cgroup))
  goto cleanup;

 if (cg_wait_for_proc_count(cgroup, 0))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (cgroup)
  cg_destroy(cgroup);
 free(cgroup);
 return ret;
}
