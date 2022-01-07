
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parport {int dummy; } ;


 int MTS64_CTL_STROBE ;
 int MTS64_CTL_WRITE_CMD ;
 int mts64_device_ready (struct parport*) ;
 int parport_write_control (struct parport*,int) ;
 int parport_write_data (struct parport*,int ) ;

__attribute__((used)) static void mts64_write_command(struct parport *p, u8 c)
{
 mts64_device_ready(p);

 parport_write_data(p, c);

 parport_write_control(p, MTS64_CTL_WRITE_CMD);
 parport_write_control(p, MTS64_CTL_WRITE_CMD | MTS64_CTL_STROBE);
 parport_write_control(p, MTS64_CTL_WRITE_CMD);
}
