
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct portman {int dummy; } ;


 int BUSY ;
 int ESTB ;
 int INT_EN ;
 int STROBE ;
 int TXEMPTY ;
 int cpu_relax () ;
 int portman_read_status (struct portman*) ;
 int portman_write_command (struct portman*,int) ;
 int portman_write_data (struct portman*,int ) ;

__attribute__((used)) static void portman_write_midi(struct portman *pm,
          int port, u8 mididata)
{
 int command = ((port + 4) << 1);
 command |= INT_EN;






 do {
  portman_write_command(pm, command);





  portman_write_data(pm, mididata);




 } while ((portman_read_status(pm) & TXEMPTY) != TXEMPTY);






 portman_write_command(pm, command | STROBE);






 while ((portman_read_status(pm) & ESTB) == 0)
  cpu_relax();


 portman_write_command(pm, command);

 while ((portman_read_status(pm) & ESTB) == ESTB)
  cpu_relax();





 while ((portman_read_status(pm) & BUSY) == BUSY)
  cpu_relax();


}
