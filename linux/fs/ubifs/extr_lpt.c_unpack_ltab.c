
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ubifs_info {int lpt_lebs; int leb_size; int ltab_sz; TYPE_1__* ltab; int lpt_spc_bits; } ;
struct TYPE_2__ {int free; int dirty; scalar_t__ cmt; scalar_t__ tgc; } ;


 int EINVAL ;
 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_LTAB ;
 int check_lpt_crc (struct ubifs_info const*,void*,int ) ;
 int check_lpt_type (struct ubifs_info const*,int **,int*,int ) ;
 int ubifs_unpack_bits (struct ubifs_info const*,int **,int*,int ) ;

__attribute__((used)) static int unpack_ltab(const struct ubifs_info *c, void *buf)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int i, pos = 0, err;

 err = check_lpt_type(c, &addr, &pos, UBIFS_LPT_LTAB);
 if (err)
  return err;
 for (i = 0; i < c->lpt_lebs; i++) {
  int free = ubifs_unpack_bits(c, &addr, &pos, c->lpt_spc_bits);
  int dirty = ubifs_unpack_bits(c, &addr, &pos, c->lpt_spc_bits);

  if (free < 0 || free > c->leb_size || dirty < 0 ||
      dirty > c->leb_size || free + dirty > c->leb_size)
   return -EINVAL;

  c->ltab[i].free = free;
  c->ltab[i].dirty = dirty;
  c->ltab[i].tgc = 0;
  c->ltab[i].cmt = 0;
 }
 err = check_lpt_crc(c, buf, c->ltab_sz);
 return err;
}
