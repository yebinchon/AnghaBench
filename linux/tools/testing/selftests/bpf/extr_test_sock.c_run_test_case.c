
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_test {char* descr; scalar_t__ result; int attach_type; int port; int ip; int type; int domain; int expected_attach_type; int insns; } ;


 scalar_t__ ATTACH_REJECT ;
 scalar_t__ BIND_REJECT ;
 scalar_t__ EPERM ;
 scalar_t__ LOAD_REJECT ;
 scalar_t__ SUCCESS ;
 int attach_sock_prog (int,int,int ) ;
 int bind_sock (int ,int ,int ,int ) ;
 int bpf_prog_detach (int,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int load_sock_prog (int ,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int run_test_case(int cgfd, const struct sock_test *test)
{
 int progfd = -1;
 int err = 0;

 printf("Test case: %s .. ", test->descr);
 progfd = load_sock_prog(test->insns, test->expected_attach_type);
 if (progfd < 0) {
  if (test->result == LOAD_REJECT)
   goto out;
  else
   goto err;
 }

 if (attach_sock_prog(cgfd, progfd, test->attach_type) == -1) {
  if (test->result == ATTACH_REJECT)
   goto out;
  else
   goto err;
 }

 if (bind_sock(test->domain, test->type, test->ip, test->port) == -1) {



  if (test->result == BIND_REJECT && errno == EPERM)
   goto out;
  else
   goto err;
 }


 if (test->result != SUCCESS)
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
