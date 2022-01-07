
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush ) () ;int (* write_char ) (unsigned char) ;} ;


 TYPE_1__* dbg_io_ops ;
 scalar_t__ dbg_kdb_mode ;
 unsigned char hex_asc_hi (unsigned char) ;
 unsigned char hex_asc_lo (unsigned char) ;
 scalar_t__ kgdb_connected ;
 int stub1 (char) ;
 int stub2 (unsigned char) ;
 int stub3 (char) ;
 int stub4 (unsigned char) ;
 int stub5 (unsigned char) ;
 int stub6 () ;

void gdbstub_exit(int status)
{
 unsigned char checksum, ch, buffer[3];
 int loop;

 if (!kgdb_connected)
  return;
 kgdb_connected = 0;

 if (!dbg_io_ops || dbg_kdb_mode)
  return;

 buffer[0] = 'W';
 buffer[1] = hex_asc_hi(status);
 buffer[2] = hex_asc_lo(status);

 dbg_io_ops->write_char('$');
 checksum = 0;

 for (loop = 0; loop < 3; loop++) {
  ch = buffer[loop];
  checksum += ch;
  dbg_io_ops->write_char(ch);
 }

 dbg_io_ops->write_char('#');
 dbg_io_ops->write_char(hex_asc_hi(checksum));
 dbg_io_ops->write_char(hex_asc_lo(checksum));


 if (dbg_io_ops->flush)
  dbg_io_ops->flush();
}
