
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ noled ;
 int write_int (char*,int) ;

__attribute__((used)) static void set_led(int on)
{
 if (noled)
  return;
 write_int("/sys/class/leds/hp::hddprotect/brightness", on);
}
