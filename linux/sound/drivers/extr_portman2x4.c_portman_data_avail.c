
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portman {int dummy; } ;


 int INT_EN ;
 int RXAVAIL ;
 int RXDATA0 ;
 int RXDATA1 ;
 int portman_read_status (struct portman*) ;
 int portman_write_command (struct portman*,int) ;

__attribute__((used)) static int portman_data_avail(struct portman *pm, int channel)
{
 int command = INT_EN;
 switch (channel) {
 case 0:
  command |= RXDATA0;
  break;
 case 1:
  command |= RXDATA1;
  break;
 }

 portman_write_command(pm, command);

 if ((portman_read_status(pm) & RXAVAIL) == RXAVAIL)
  return 1;


 return 0;
}
