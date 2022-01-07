
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGTERM ;
 int display_sig ;
 int sighandler_dump_stack ;
 int signal (int ,int ) ;

__attribute__((used)) static void display_setup_sig(void)
{
 signal(SIGSEGV, sighandler_dump_stack);
 signal(SIGFPE, sighandler_dump_stack);
 signal(SIGINT, display_sig);
 signal(SIGQUIT, display_sig);
 signal(SIGTERM, display_sig);
}
