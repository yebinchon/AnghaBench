
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBD_DATA_REG ;
 int KBD_STATUS_REG ;
 int KBD_STAT_MOUSE_OBF ;
 int KBD_STAT_OBF ;
 int cpu_relax () ;
 int inb (int ) ;
 scalar_t__ kbd_last_ret ;

void kdb_kbd_cleanup_state(void)
{
 int scancode, scanstatus;






 if (!kbd_last_ret)
  return;

 kbd_last_ret = 0;
 while (1) {
  while ((inb(KBD_STATUS_REG) & KBD_STAT_OBF) == 0)
   cpu_relax();




  scancode = inb(KBD_DATA_REG);
  scanstatus = inb(KBD_STATUS_REG);




  if (scanstatus & KBD_STAT_MOUSE_OBF)
   continue;
  if (scancode != 0x9c)
   continue;

  return;
 }
}
