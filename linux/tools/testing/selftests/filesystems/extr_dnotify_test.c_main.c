
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;


 int DN_CREATE ;
 int DN_MODIFY ;
 int DN_MULTISHOT ;
 int F_NOTIFY ;
 int F_SETSIG ;
 int O_RDONLY ;
 int SA_SIGINFO ;
 int SIGRTMIN ;
 int event_fd ;
 int fcntl (int,int ,int) ;
 int handler ;
 int open (char*,int ) ;
 int pause () ;
 int printf (char*,int) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

int main(void)
{
 struct sigaction act;
 int fd;

 act.sa_sigaction = handler;
 sigemptyset(&act.sa_mask);
 act.sa_flags = SA_SIGINFO;
 sigaction(SIGRTMIN + 1, &act, ((void*)0));

 fd = open(".", O_RDONLY);
 fcntl(fd, F_SETSIG, SIGRTMIN + 1);
 fcntl(fd, F_NOTIFY, DN_MODIFY|DN_CREATE|DN_MULTISHOT);


 while (1) {
  pause();
  printf("Got event on fd=%d\n", event_fd);
 }
}
