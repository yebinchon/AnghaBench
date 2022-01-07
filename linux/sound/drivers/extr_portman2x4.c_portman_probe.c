
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int ESTB ;
 scalar_t__ RXDATA0 ;
 scalar_t__ STROBE ;
 scalar_t__ TXDATA0 ;
 int TXEMPTY ;
 int parport_read_status (struct parport*) ;
 int parport_write_control (struct parport*,scalar_t__) ;
 int parport_write_data (struct parport*,int ) ;

__attribute__((used)) static int portman_probe(struct parport *p)
{




 parport_write_data(p, 0);
 parport_write_control(p, 0);



 parport_write_control(p, RXDATA0);



 if ((parport_read_status(p) & ESTB) == ESTB)
  return 1;



 parport_write_control(p, RXDATA0 + STROBE);


 if ((parport_read_status(p) & ESTB) != ESTB)
  return 1;


 parport_write_control(p, 0);





 parport_write_control(p, TXDATA0);





 if ((parport_read_status(p) & TXEMPTY) == 0)
  return 2;


 return 0;
}
