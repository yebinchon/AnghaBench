
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parport {int dummy; } ;


 int MTS64_CTL_READOUT ;
 int parport_read_control (struct parport*) ;
 int parport_write_control (struct parport*,int ) ;

__attribute__((used)) static void mts64_disable_readout(struct parport *p)
{
 u8 c;

 c = parport_read_control(p);
 c &= ~MTS64_CTL_READOUT;
 parport_write_control(p, c);
}
