
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parport {int dummy; } ;


 int ENODEV ;
 int MTS64_CMD_PROBE ;
 int msleep (int) ;
 int mts64_read (struct parport*) ;
 int mts64_smpte_stop (struct parport*) ;
 int mts64_write_command (struct parport*,int) ;

__attribute__((used)) static int mts64_probe(struct parport *p)
{
 u8 c;

 mts64_smpte_stop(p);
 mts64_write_command(p, MTS64_CMD_PROBE);

 msleep(50);

 c = mts64_read(p);

 c &= 0x00ff;
 if (c != MTS64_CMD_PROBE)
  return -ENODEV;
 else
  return 0;

}
