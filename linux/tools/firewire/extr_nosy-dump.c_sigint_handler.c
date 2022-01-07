
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_DFL ;
 int run ;
 int signal (int ,int ) ;

__attribute__((used)) static void
sigint_handler(int signal_num)
{
 if (run == 1) {
  run = 0;
  signal(SIGINT, SIG_DFL);
 }
}
