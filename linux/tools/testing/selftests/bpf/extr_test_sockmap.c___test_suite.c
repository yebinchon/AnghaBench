
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_PATH ;
 int EINVAL ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (int ) ;
 int failed ;
 int fprintf (int ,char*,...) ;
 scalar_t__ join_cgroup (int ) ;
 char* optarg ;
 int passed ;
 int populate_progs (char*) ;
 int printf (char*,int,int) ;
 scalar_t__ setup_cgroup_environment () ;
 int stderr ;
 int test_mixed (int) ;
 int test_start_end (int) ;
 int test_txmsg (int) ;
 scalar_t__ txmsg_end ;
 scalar_t__ txmsg_end_push ;
 scalar_t__ txmsg_start ;
 scalar_t__ txmsg_start_push ;

__attribute__((used)) static int __test_suite(int cg_fd, char *bpf_file)
{
 int err, cleanup = cg_fd;

 err = populate_progs(bpf_file);
 if (err < 0) {
  fprintf(stderr, "ERROR: (%i) load bpf failed\n", err);
  return err;
 }

 if (cg_fd < 0) {
  if (setup_cgroup_environment()) {
   fprintf(stderr, "ERROR: cgroup env failed\n");
   return -EINVAL;
  }

  cg_fd = create_and_get_cgroup(CG_PATH);
  if (cg_fd < 0) {
   fprintf(stderr,
    "ERROR: (%i) open cg path failed: %s\n",
    cg_fd, optarg);
   return cg_fd;
  }

  if (join_cgroup(CG_PATH)) {
   fprintf(stderr, "ERROR: failed to join cgroup\n");
   return -EINVAL;
  }
 }


 txmsg_start = txmsg_end = txmsg_start_push = txmsg_end_push = 0;
 err = test_txmsg(cg_fd);
 if (err)
  goto out;


 err = test_mixed(cg_fd);
 if (err)
  goto out;


 err = test_start_end(cg_fd);
 if (err)
  goto out;

out:
 printf("Summary: %i PASSED %i FAILED\n", passed, failed);
 if (cleanup < 0) {
  cleanup_cgroup_environment();
  close(cg_fd);
 }
 return err;
}
