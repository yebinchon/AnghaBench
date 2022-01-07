
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysctl_path ;
struct sysctl_test {int attach_type; char* descr; char* sysctl; scalar_t__ result; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 scalar_t__ ATTACH_REJECT ;
 int BPF_F_ALLOW_OVERRIDE ;
 scalar_t__ EPERM ;
 scalar_t__ LOAD_REJECT ;
 scalar_t__ OP_EPERM ;
 scalar_t__ SUCCESS ;
 int access_sysctl (char*,struct sysctl_test*) ;
 int bpf_prog_attach (int,int,int,int ) ;
 int bpf_prog_detach (int,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int load_sysctl_prog (struct sysctl_test*,char*) ;
 int log_err (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int run_test_case(int cgfd, struct sysctl_test *test)
{
 enum bpf_attach_type atype = test->attach_type;
 char sysctl_path[128];
 int progfd = -1;
 int err = 0;

 printf("Test case: %s .. ", test->descr);

 snprintf(sysctl_path, sizeof(sysctl_path), "/proc/sys/%s",
   test->sysctl);

 progfd = load_sysctl_prog(test, sysctl_path);
 if (progfd < 0) {
  if (test->result == LOAD_REJECT)
   goto out;
  else
   goto err;
 }

 if (bpf_prog_attach(progfd, cgfd, atype, BPF_F_ALLOW_OVERRIDE) == -1) {
  if (test->result == ATTACH_REJECT)
   goto out;
  else
   goto err;
 }

 errno = 0;
 if (access_sysctl(sysctl_path, test) == -1) {
  if (test->result == OP_EPERM && errno == EPERM)
   goto out;
  else
   goto err;
 }

 if (test->result != SUCCESS) {
  log_err("Unexpected success");
  goto err;
 }

 goto out;
err:
 err = -1;
out:

 if (progfd != -1)
  bpf_prog_detach(cgfd, atype);
 close(progfd);
 printf("[%s]\n", err ? "FAIL" : "PASS");
 return err;
}
