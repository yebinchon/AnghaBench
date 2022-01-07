
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ orig_fgconsole ;
 int orig_kmsg ;
 int pm_vt_switch () ;
 int vt_kmsg_redirect (int ) ;
 int vt_move_to_console (scalar_t__,int ) ;

void pm_restore_console(void)
{
 if (!pm_vt_switch())
  return;

 if (orig_fgconsole >= 0) {
  vt_move_to_console(orig_fgconsole, 0);
  vt_kmsg_redirect(orig_kmsg);
 }
}
