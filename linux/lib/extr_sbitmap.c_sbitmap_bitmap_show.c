
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
struct seq_file {int dummy; } ;
struct sbitmap {int map_nr; TYPE_1__* map; } ;
struct TYPE_2__ {int depth; int word; } ;


 int BIT (unsigned int) ;
 void* READ_ONCE (int ) ;
 int emit_byte (struct seq_file*,unsigned int,unsigned long) ;
 unsigned int min (int,unsigned int) ;
 int seq_putc (struct seq_file*,char) ;

void sbitmap_bitmap_show(struct sbitmap *sb, struct seq_file *m)
{
 u8 byte = 0;
 unsigned int byte_bits = 0;
 unsigned int offset = 0;
 int i;

 for (i = 0; i < sb->map_nr; i++) {
  unsigned long word = READ_ONCE(sb->map[i].word);
  unsigned int word_bits = READ_ONCE(sb->map[i].depth);

  while (word_bits > 0) {
   unsigned int bits = min(8 - byte_bits, word_bits);

   byte |= (word & (BIT(bits) - 1)) << byte_bits;
   byte_bits += bits;
   if (byte_bits == 8) {
    emit_byte(m, offset, byte);
    byte = 0;
    byte_bits = 0;
    offset++;
   }
   word >>= bits;
   word_bits -= bits;
  }
 }
 if (byte_bits) {
  emit_byte(m, offset, byte);
  offset++;
 }
 if (offset)
  seq_putc(m, '\n');
}
