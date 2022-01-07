
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned int) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static inline void emit_byte(struct seq_file *m, unsigned int offset, u8 byte)
{
 if ((offset & 0xf) == 0) {
  if (offset != 0)
   seq_putc(m, '\n');
  seq_printf(m, "%08x:", offset);
 }
 if ((offset & 0x1) == 0)
  seq_putc(m, ' ');
 seq_printf(m, "%02x", byte);
}
