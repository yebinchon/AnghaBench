
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rl_crlf () ;
 scalar_t__ rl_end ;
 int rl_free_line_state () ;
 int rl_kill_line (int,int ) ;
 int rl_refresh_line (int ,int ) ;

__attribute__((used)) static void intr_shell(int sig)
{
 if (rl_end)
  rl_kill_line(-1, 0);

 rl_crlf();
 rl_refresh_line(0, 0);
 rl_free_line_state();
}
