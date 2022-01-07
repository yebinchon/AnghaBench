
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush ) () ;int (* write_char ) (char) ;} ;


 TYPE_1__* dbg_io_ops ;
 char gdbstub_read_wait () ;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;
 int stub1 (char) ;
 int stub2 (char) ;
 int stub3 (char) ;
 int stub4 (char) ;
 int stub5 (char) ;
 int stub6 () ;
 int stub7 (char) ;
 int stub8 () ;

__attribute__((used)) static void put_packet(char *buffer)
{
 unsigned char checksum;
 int count;
 char ch;




 while (1) {
  dbg_io_ops->write_char('$');
  checksum = 0;
  count = 0;

  while ((ch = buffer[count])) {
   dbg_io_ops->write_char(ch);
   checksum += ch;
   count++;
  }

  dbg_io_ops->write_char('#');
  dbg_io_ops->write_char(hex_asc_hi(checksum));
  dbg_io_ops->write_char(hex_asc_lo(checksum));
  if (dbg_io_ops->flush)
   dbg_io_ops->flush();


  ch = gdbstub_read_wait();

  if (ch == 3)
   ch = gdbstub_read_wait();


  if (ch == '+')
   return;







  if (ch == '$') {
   dbg_io_ops->write_char('-');
   if (dbg_io_ops->flush)
    dbg_io_ops->flush();
   return;
  }
 }
}
