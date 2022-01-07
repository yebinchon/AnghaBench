
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct pollfd {int events; int fd; } ;
struct perf_top {int delay_secs; } ;


 int CLONE_FS ;
 int EINTR ;
 int MSEC_PER_SEC ;
 int POLLIN ;
 int PR_SET_NAME ;
 int TCSAFLUSH ;
 int __fallthrough ;
 int display_setup_sig () ;
 int done ;
 int errno ;
 int getc (int ) ;
 int perf_top__handle_keypress (struct perf_top*,int) ;
 int perf_top__print_sym_table (struct perf_top*) ;
 int poll (struct pollfd*,int,int) ;
 int prctl (int ,char*,int ,int ,int ) ;
 int pthread__unblock_sigwinch () ;
 int set_term_quiet_input (struct termios*) ;
 int stdin ;
 int stop_top () ;
 int tcsetattr (int ,int ,struct termios*) ;
 int unshare (int ) ;

__attribute__((used)) static void *display_thread(void *arg)
{
 struct pollfd stdin_poll = { .fd = 0, .events = POLLIN };
 struct termios save;
 struct perf_top *top = arg;
 int delay_msecs, c;






 unshare(CLONE_FS);

 prctl(PR_SET_NAME, "perf-top-UI", 0, 0, 0);

 display_setup_sig();
 pthread__unblock_sigwinch();
repeat:
 delay_msecs = top->delay_secs * MSEC_PER_SEC;
 set_term_quiet_input(&save);

 getc(stdin);

 while (!done) {
  perf_top__print_sym_table(top);




  switch (poll(&stdin_poll, 1, delay_msecs)) {
  case 0:
   continue;
  case -1:
   if (errno == EINTR)
    continue;
   __fallthrough;
  default:
   c = getc(stdin);
   tcsetattr(0, TCSAFLUSH, &save);

   if (perf_top__handle_keypress(top, c))
    goto repeat;
   stop_top();
  }
 }

 tcsetattr(0, TCSAFLUSH, &save);
 return ((void*)0);
}
