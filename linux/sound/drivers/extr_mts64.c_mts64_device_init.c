
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int EIO ;
 int MTS64_CMD_RESET ;
 int msleep (int) ;
 int mts64_disable_readout (struct parport*) ;
 scalar_t__ mts64_probe (struct parport*) ;
 int mts64_write_command (struct parport*,int ) ;

__attribute__((used)) static int mts64_device_init(struct parport *p)
{
 int i;

 mts64_write_command(p, MTS64_CMD_RESET);

 for (i = 0; i < 64; ++i) {
  msleep(100);

  if (mts64_probe(p) == 0) {

   mts64_disable_readout(p);
   return 0;
  }
 }
 mts64_disable_readout(p);

 return -EIO;
}
