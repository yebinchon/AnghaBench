
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_addr_test {char* descr; int (* loadfn ) (struct sock_addr_test const*) ;scalar_t__ expected_result; int attach_type; } ;


 scalar_t__ ATTACH_OKAY ;
 scalar_t__ ATTACH_REJECT ;
 int BPF_F_ALLOW_OVERRIDE ;
 int ENOTSUPP ;
 int EPERM ;
 scalar_t__ LOAD_REJECT ;
 scalar_t__ SUCCESS ;
 scalar_t__ SYSCALL_ENOTSUPP ;
 scalar_t__ SYSCALL_EPERM ;
 int bpf_prog_attach (int,int,int ,int ) ;
 int bpf_prog_detach (int,int ) ;
 int close (int) ;
 int printf (char*,char*) ;
 int run_bind_test_case (struct sock_addr_test const*) ;
 int run_connect_test_case (struct sock_addr_test const*) ;
 int run_xmsg_test_case (struct sock_addr_test const*,int) ;
 int stub1 (struct sock_addr_test const*) ;

__attribute__((used)) static int run_test_case(int cgfd, const struct sock_addr_test *test)
{
 int progfd = -1;
 int err = 0;

 printf("Test case: %s .. ", test->descr);

 progfd = test->loadfn(test);
 if (test->expected_result == LOAD_REJECT && progfd < 0)
  goto out;
 else if (test->expected_result == LOAD_REJECT || progfd < 0)
  goto err;

 err = bpf_prog_attach(progfd, cgfd, test->attach_type,
         BPF_F_ALLOW_OVERRIDE);
 if (test->expected_result == ATTACH_REJECT && err) {
  err = 0;
  goto out;
 } else if (test->expected_result == ATTACH_REJECT || err) {
  goto err;
 } else if (test->expected_result == ATTACH_OKAY) {
  err = 0;
  goto out;
 }

 switch (test->attach_type) {
 case 135:
 case 133:
  err = run_bind_test_case(test);
  break;
 case 134:
 case 132:
  err = run_connect_test_case(test);
  break;
 case 130:
 case 128:
  err = run_xmsg_test_case(test, 1);
  break;
 case 131:
 case 129:
  err = run_xmsg_test_case(test, 0);
  break;
 default:
  goto err;
 }

 if (test->expected_result == SYSCALL_EPERM && err == EPERM) {
  err = 0;
  goto out;
 }

 if (test->expected_result == SYSCALL_ENOTSUPP && err == ENOTSUPP) {
  err = 0;
  goto out;
 }

 if (err || test->expected_result != SUCCESS)
  goto err;

 goto out;
err:
 err = -1;
out:

 if (progfd != -1)
  bpf_prog_detach(cgfd, test->attach_type);
 close(progfd);
 printf("[%s]\n", err ? "FAIL" : "PASS");
 return err;
}
