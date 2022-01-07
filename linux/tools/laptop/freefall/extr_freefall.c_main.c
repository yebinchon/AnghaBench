
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct sched_param {int sched_priority; } ;
typedef int count ;


 scalar_t__ EINTR ;
 int EINVAL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_CONS ;
 int LOG_LOCAL1 ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int O_RDONLY ;
 int SCHED_FIFO ;
 int SIGALRM ;
 int alarm (int) ;
 int app_name ;
 int close (int) ;
 int closelog () ;
 scalar_t__ daemon (int ,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int ignore_me ;
 scalar_t__ lid_open () ;
 int mlockall (int) ;
 int noled ;
 scalar_t__ on_ac () ;
 int open (char*,int ) ;
 int openlog (int ,int,int ) ;
 int perror (char*) ;
 int protect (int) ;
 int read (int,unsigned char*,int) ;
 int sched_get_priority_max (int ) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int set_led (int) ;
 int set_unload_heads_path (char*) ;
 int signal (int ,int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int valid_disk () ;

int main(int argc, char **argv)
{
 int fd, ret;
 struct stat st;
 struct sched_param param;

 if (argc == 1)
  ret = set_unload_heads_path("/dev/sda");
 else if (argc == 2)
  ret = set_unload_heads_path(argv[1]);
 else
  ret = -EINVAL;

 if (ret || !valid_disk()) {
  fprintf(stderr, "usage: %s <device> (default: /dev/sda)\n",
    argv[0]);
  exit(1);
 }

 fd = open("/dev/freefall", O_RDONLY);
 if (fd < 0) {
  perror("/dev/freefall");
  return EXIT_FAILURE;
 }

 if (stat("/sys/class/leds/hp::hddprotect/brightness", &st))
  noled = 1;

 if (daemon(0, 0) != 0) {
  perror("daemon");
  return EXIT_FAILURE;
 }

 openlog(app_name, LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);

 param.sched_priority = sched_get_priority_max(SCHED_FIFO);
 sched_setscheduler(0, SCHED_FIFO, &param);
 mlockall(MCL_CURRENT|MCL_FUTURE);

 signal(SIGALRM, ignore_me);

 for (;;) {
  unsigned char count;

  ret = read(fd, &count, sizeof(count));
  alarm(0);
  if ((ret == -1) && (errno == EINTR)) {

   continue;
  }

  if (ret != sizeof(count)) {
   perror("read");
   break;
  }

  protect(21);
  set_led(1);
  if (1 || on_ac() || lid_open())
   alarm(2);
  else
   alarm(20);
 }

 closelog();
 close(fd);
 return EXIT_SUCCESS;
}
