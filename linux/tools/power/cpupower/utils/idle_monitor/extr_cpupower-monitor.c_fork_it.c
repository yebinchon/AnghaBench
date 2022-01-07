
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
typedef int pid_t ;
struct TYPE_2__ {int (* stop ) () ;int (* start ) () ;} ;


 int CLOCK_REALTIME ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 char* _ (char*) ;
 unsigned int avail_monitors ;
 int clock_gettime (int ,struct timespec*) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 int fork () ;
 TYPE_1__** monitors ;
 int perror (char*) ;
 int printf (char*,char*,unsigned long long,int) ;
 int signal (int ,int ) ;
 int stub1 () ;
 int stub2 () ;
 unsigned long long timespec_diff_us (struct timespec,struct timespec) ;
 int waitpid (int,int*,int ) ;

int fork_it(char **argv)
{
 int status;
 unsigned int num;
 unsigned long long timediff;
 pid_t child_pid;
 struct timespec start, end;

 child_pid = fork();
 clock_gettime(CLOCK_REALTIME, &start);

 for (num = 0; num < avail_monitors; num++)
  monitors[num]->start();

 if (!child_pid) {

  execvp(argv[0], argv);
 } else {

  if (child_pid == -1) {
   perror("fork");
   exit(1);
  }

  signal(SIGINT, SIG_IGN);
  signal(SIGQUIT, SIG_IGN);
  if (waitpid(child_pid, &status, 0) == -1) {
   perror("wait");
   exit(1);
  }
 }
 clock_gettime(CLOCK_REALTIME, &end);
 for (num = 0; num < avail_monitors; num++)
  monitors[num]->stop();

 timediff = timespec_diff_us(start, end);
 if (WIFEXITED(status))
  printf(_("%s took %.5f seconds and exited with status %d\n"),
   argv[0], timediff / (1000.0 * 1000),
   WEXITSTATUS(status));
 return 0;
}
