
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parport {int dummy; } ;


 int MTS64_STAT_BSY ;
 int parport_read_status (struct parport*) ;

__attribute__((used)) static int mts64_device_ready(struct parport *p)
{
 int i;
 u8 c;

 for (i = 0; i < 0xffff; ++i) {
  c = parport_read_status(p);
  c &= MTS64_STAT_BSY;
  if (c != 0)
   return 1;
 }

 return 0;
}
