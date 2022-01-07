
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;
 int touch_nmi_watchdog () ;

__attribute__((used)) static void spin_msec(int msecs)
{
 int i;

 for (i = 0; i < msecs; i++) {
  touch_nmi_watchdog();
  mdelay(1);
 }
}
