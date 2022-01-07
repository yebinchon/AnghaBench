
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUSPEND_CONSOLE ;
 scalar_t__ orig_fgconsole ;
 int orig_kmsg ;
 int pm_vt_switch () ;
 int vt_kmsg_redirect (int ) ;
 scalar_t__ vt_move_to_console (int ,int) ;

void pm_prepare_console(void)
{
 if (!pm_vt_switch())
  return;

 orig_fgconsole = vt_move_to_console(SUSPEND_CONSOLE, 1);
 if (orig_fgconsole < 0)
  return;

 orig_kmsg = vt_kmsg_redirect(SUSPEND_CONSOLE);
 return;
}
