
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int FL_MIN_LINGER ;
 int IPV6_FL_F_CREATE ;
 int IPV6_FL_F_EXCL ;
 int IPV6_FL_S_ANY ;
 int IPV6_FL_S_EXCL ;
 int IPV6_FL_S_PROCESS ;
 int IPV6_FL_S_USER ;
 int USHRT_MAX ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 scalar_t__ cfg_long_running ;
 int errno ;
 int error (int,int ,char*) ;
 int exit (int ) ;
 int expect_fail (int ) ;
 int expect_pass (int ) ;
 int explain (char*) ;
 int flowlabel_get (int,int,int ,int) ;
 int flowlabel_put (int,int) ;
 int fork () ;
 int fprintf (int ,char*) ;
 scalar_t__ setuid (int ) ;
 int sleep (int) ;
 int stderr ;
 int wait (int*) ;

__attribute__((used)) static void run_tests(int fd)
{
 int wstatus;
 pid_t pid;

 explain("cannot get non-existent label");
 expect_fail(flowlabel_get(fd, 1, IPV6_FL_S_ANY, 0));

 explain("cannot put non-existent label");
 expect_fail(flowlabel_put(fd, 1));

 explain("cannot create label greater than 20 bits");
 expect_fail(flowlabel_get(fd, 0x1FFFFF, IPV6_FL_S_ANY,
      IPV6_FL_F_CREATE));

 explain("create a new label (FL_F_CREATE)");
 expect_pass(flowlabel_get(fd, 1, IPV6_FL_S_ANY, IPV6_FL_F_CREATE));
 explain("can get the label (without FL_F_CREATE)");
 expect_pass(flowlabel_get(fd, 1, IPV6_FL_S_ANY, 0));
 explain("can get it again with create flag set, too");
 expect_pass(flowlabel_get(fd, 1, IPV6_FL_S_ANY, IPV6_FL_F_CREATE));
 explain("cannot get it again with the exclusive (FL_FL_EXCL) flag");
 expect_fail(flowlabel_get(fd, 1, IPV6_FL_S_ANY,
      IPV6_FL_F_CREATE | IPV6_FL_F_EXCL));
 explain("can now put exactly three references");
 expect_pass(flowlabel_put(fd, 1));
 expect_pass(flowlabel_put(fd, 1));
 expect_pass(flowlabel_put(fd, 1));
 expect_fail(flowlabel_put(fd, 1));

 explain("create a new exclusive label (FL_S_EXCL)");
 expect_pass(flowlabel_get(fd, 2, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE));
 explain("cannot get it again in non-exclusive mode");
 expect_fail(flowlabel_get(fd, 2, IPV6_FL_S_ANY, IPV6_FL_F_CREATE));
 explain("cannot get it again in exclusive mode either");
 expect_fail(flowlabel_get(fd, 2, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE));
 expect_pass(flowlabel_put(fd, 2));

 if (cfg_long_running) {
  explain("cannot reuse the label, due to linger");
  expect_fail(flowlabel_get(fd, 2, IPV6_FL_S_ANY,
       IPV6_FL_F_CREATE));
  explain("after sleep, can reuse");
  sleep(FL_MIN_LINGER * 2 + 1);
  expect_pass(flowlabel_get(fd, 2, IPV6_FL_S_ANY,
       IPV6_FL_F_CREATE));
 }

 explain("create a new user-private label (FL_S_USER)");
 expect_pass(flowlabel_get(fd, 3, IPV6_FL_S_USER, IPV6_FL_F_CREATE));
 explain("cannot get it again in non-exclusive mode");
 expect_fail(flowlabel_get(fd, 3, IPV6_FL_S_ANY, 0));
 explain("cannot get it again in exclusive mode");
 expect_fail(flowlabel_get(fd, 3, IPV6_FL_S_EXCL, 0));
 explain("can get it again in user mode");
 expect_pass(flowlabel_get(fd, 3, IPV6_FL_S_USER, 0));
 explain("child process can get it too, but not after setuid(nobody)");
 pid = fork();
 if (pid == -1)
  error(1, errno, "fork");
 if (!pid) {
  expect_pass(flowlabel_get(fd, 3, IPV6_FL_S_USER, 0));
  if (setuid(USHRT_MAX))
   fprintf(stderr, "[INFO] skip setuid child test\n");
  else
   expect_fail(flowlabel_get(fd, 3, IPV6_FL_S_USER, 0));
  exit(0);
 }
 if (wait(&wstatus) == -1)
  error(1, errno, "wait");
 if (!WIFEXITED(wstatus) || WEXITSTATUS(wstatus) != 0)
  error(1, errno, "wait: unexpected child result");

 explain("create a new process-private label (FL_S_PROCESS)");
 expect_pass(flowlabel_get(fd, 4, IPV6_FL_S_PROCESS, IPV6_FL_F_CREATE));
 explain("can get it again");
 expect_pass(flowlabel_get(fd, 4, IPV6_FL_S_PROCESS, 0));
 explain("child process cannot can get it");
 pid = fork();
 if (pid == -1)
  error(1, errno, "fork");
 if (!pid) {
  expect_fail(flowlabel_get(fd, 4, IPV6_FL_S_PROCESS, 0));
  exit(0);
 }
 if (wait(&wstatus) == -1)
  error(1, errno, "wait");
 if (!WIFEXITED(wstatus) || WEXITSTATUS(wstatus) != 0)
  error(1, errno, "wait: unexpected child result");
}
