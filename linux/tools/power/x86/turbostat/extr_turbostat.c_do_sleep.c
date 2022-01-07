
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int fd_set ;



 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int exit_requested ;
 int getc (int ) ;
 int ignore_stdin ;
 struct timespec interval_ts ;
 struct timeval interval_tv ;
 int nanosleep (struct timespec*,int *) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stdin ;

void do_sleep(void)
{
 struct timeval tout;
 struct timespec rest;
 fd_set readfds;
 int retval;

 FD_ZERO(&readfds);
 FD_SET(0, &readfds);

 if (ignore_stdin) {
  nanosleep(&interval_ts, ((void*)0));
  return;
 }

 tout = interval_tv;
 retval = select(1, &readfds, ((void*)0), ((void*)0), &tout);

 if (retval == 1) {
  switch (getc(stdin)) {
  case 'q':
   exit_requested = 1;
   break;
  case 128:




   ignore_stdin = 1;

   rest.tv_sec = (tout.tv_sec + tout.tv_usec / 1000000);
   rest.tv_nsec = (tout.tv_usec % 1000000) * 1000;
   nanosleep(&rest, ((void*)0));
  }
 }
}
