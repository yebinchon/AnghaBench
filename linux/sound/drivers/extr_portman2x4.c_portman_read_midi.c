
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portman {int dummy; } ;


 int ESTB ;
 int INT_EN ;
 int RXAVAIL ;
 unsigned char STROBE ;
 int cpu_relax () ;
 int portman_read_status (struct portman*) ;
 int portman_write_command (struct portman*,unsigned char) ;
 int portman_write_data (struct portman*,int) ;

__attribute__((used)) static int portman_read_midi(struct portman *pm, int port)
{
 unsigned char midi_data = 0;
 unsigned char cmdout;


 portman_write_data(pm, 0);


 cmdout = (port << 1) | INT_EN;
 portman_write_command(pm, cmdout);

 while ((portman_read_status(pm) & ESTB) == ESTB)
  cpu_relax();




 if ((portman_read_status(pm) & RXAVAIL) == 0)
  return -1;


 portman_write_command(pm, cmdout | STROBE);

 while ((portman_read_status(pm) & ESTB) == 0)
  cpu_relax();


 midi_data = (portman_read_status(pm) & 128);
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 1) & 64;
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 2) & 32;
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 3) & 16;
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 4) & 8;
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 5) & 4;
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 6) & 2;
 portman_write_data(pm, 1);


 portman_write_data(pm, 0);
 midi_data |= (portman_read_status(pm) >> 7) & 1;
 portman_write_data(pm, 1);
 portman_write_data(pm, 0);



 portman_write_command(pm, cmdout);


 while ((portman_read_status(pm) & ESTB) == ESTB)
  cpu_relax();

 return (midi_data & 255);
}
