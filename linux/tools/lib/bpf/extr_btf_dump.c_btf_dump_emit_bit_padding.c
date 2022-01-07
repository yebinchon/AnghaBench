
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump {int dummy; } ;


 int btf_dump_printf (struct btf_dump const*,char*,int ,char const*,int) ;
 int chip_away_bits (int,int) ;
 int pfx (int) ;

__attribute__((used)) static void btf_dump_emit_bit_padding(const struct btf_dump *d,
          int cur_off, int m_off, int m_bit_sz,
          int align, int lvl)
{
 int off_diff = m_off - cur_off;
 int ptr_bits = sizeof(void *) * 8;

 if (off_diff <= 0)

  return;
 if (m_bit_sz == 0 && off_diff < align * 8)

  return;

 while (off_diff > 0) {
  const char *pad_type;
  int pad_bits;

  if (ptr_bits > 32 && off_diff > 32) {
   pad_type = "long";
   pad_bits = chip_away_bits(off_diff, ptr_bits);
  } else if (off_diff > 16) {
   pad_type = "int";
   pad_bits = chip_away_bits(off_diff, 32);
  } else if (off_diff > 8) {
   pad_type = "short";
   pad_bits = chip_away_bits(off_diff, 16);
  } else {
   pad_type = "char";
   pad_bits = chip_away_bits(off_diff, 8);
  }
  btf_dump_printf(d, "\n%s%s: %d;", pfx(lvl), pad_type, pad_bits);
  off_diff -= pad_bits;
 }
}
