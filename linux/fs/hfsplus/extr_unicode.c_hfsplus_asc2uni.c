
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int u16 ;
struct super_block {int dummy; } ;
struct hfsplus_unistr {void* length; void** unicode; } ;
struct TYPE_2__ {int flags; } ;


 int ENAMETOOLONG ;
 TYPE_1__* HFSPLUS_SB (struct super_block*) ;
 int HFSPLUS_SB_NODECOMPOSE ;
 int asc2unichar (struct super_block*,char const*,int,int*) ;
 void* cpu_to_be16 (int) ;
 int* decompose_unichar (int,int*,int*) ;
 int test_bit (int ,int *) ;

int hfsplus_asc2uni(struct super_block *sb,
      struct hfsplus_unistr *ustr, int max_unistr_len,
      const char *astr, int len)
{
 int size, dsize, decompose;
 u16 *dstr, outlen = 0;
 wchar_t c;
 u16 dhangul[3];

 decompose = !test_bit(HFSPLUS_SB_NODECOMPOSE, &HFSPLUS_SB(sb)->flags);
 while (outlen < max_unistr_len && len > 0) {
  size = asc2unichar(sb, astr, len, &c);

  if (decompose)
   dstr = decompose_unichar(c, &dsize, dhangul);
  else
   dstr = ((void*)0);
  if (dstr) {
   if (outlen + dsize > max_unistr_len)
    break;
   do {
    ustr->unicode[outlen++] = cpu_to_be16(*dstr++);
   } while (--dsize > 0);
  } else
   ustr->unicode[outlen++] = cpu_to_be16(c);

  astr += size;
  len -= size;
 }
 ustr->length = cpu_to_be16(outlen);
 if (len > 0)
  return -ENAMETOOLONG;
 return 0;
}
