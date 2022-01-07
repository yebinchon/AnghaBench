
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int raise (int) ;
 int signal (int,int ) ;
 int signr ;

__attribute__((used)) static void record__sig_exit(void)
{
 if (signr == -1)
  return;

 signal(signr, SIG_DFL);
 raise(signr);
}
