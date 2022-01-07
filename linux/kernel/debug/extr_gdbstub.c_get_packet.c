
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush ) () ;int (* write_char ) (char) ;} ;


 int BUFMAX ;
 TYPE_1__* dbg_io_ops ;
 char gdbstub_read_wait () ;
 unsigned char hex_to_bin (char) ;
 int kgdb_connected ;
 int stub1 (char) ;
 int stub2 (char) ;
 int stub3 () ;

__attribute__((used)) static void get_packet(char *buffer)
{
 unsigned char checksum;
 unsigned char xmitcsum;
 int count;
 char ch;

 do {




  while ((ch = (gdbstub_read_wait())) != '$')
                ;

  kgdb_connected = 1;
  checksum = 0;
  xmitcsum = -1;

  count = 0;




  while (count < (BUFMAX - 1)) {
   ch = gdbstub_read_wait();
   if (ch == '#')
    break;
   checksum = checksum + ch;
   buffer[count] = ch;
   count = count + 1;
  }

  if (ch == '#') {
   xmitcsum = hex_to_bin(gdbstub_read_wait()) << 4;
   xmitcsum += hex_to_bin(gdbstub_read_wait());

   if (checksum != xmitcsum)

    dbg_io_ops->write_char('-');
   else

    dbg_io_ops->write_char('+');
   if (dbg_io_ops->flush)
    dbg_io_ops->flush();
  }
  buffer[count] = 0;
 } while (checksum != xmitcsum);
}
