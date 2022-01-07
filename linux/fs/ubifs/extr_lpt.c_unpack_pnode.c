
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubifs_pnode {struct ubifs_lprops* lprops; void* num; } ;
struct ubifs_lprops {int free; int dirty; int flags; } ;
struct ubifs_info {int pcnt_bits; int space_bits; int pnode_sz; scalar_t__ big_lpt; } ;


 int LPROPS_INDEX ;
 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_FANOUT ;
 int UBIFS_LPT_PNODE ;
 int check_lpt_crc (struct ubifs_info const*,void*,int ) ;
 int check_lpt_type (struct ubifs_info const*,int **,int*,int ) ;
 int ubifs_categorize_lprops (struct ubifs_info const*,struct ubifs_lprops* const) ;
 void* ubifs_unpack_bits (struct ubifs_info const*,int **,int*,int) ;

__attribute__((used)) static int unpack_pnode(const struct ubifs_info *c, void *buf,
   struct ubifs_pnode *pnode)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int i, pos = 0, err;

 err = check_lpt_type(c, &addr, &pos, UBIFS_LPT_PNODE);
 if (err)
  return err;
 if (c->big_lpt)
  pnode->num = ubifs_unpack_bits(c, &addr, &pos, c->pcnt_bits);
 for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
  struct ubifs_lprops * const lprops = &pnode->lprops[i];

  lprops->free = ubifs_unpack_bits(c, &addr, &pos, c->space_bits);
  lprops->free <<= 3;
  lprops->dirty = ubifs_unpack_bits(c, &addr, &pos, c->space_bits);
  lprops->dirty <<= 3;

  if (ubifs_unpack_bits(c, &addr, &pos, 1))
   lprops->flags = LPROPS_INDEX;
  else
   lprops->flags = 0;
  lprops->flags |= ubifs_categorize_lprops(c, lprops);
 }
 err = check_lpt_crc(c, buf, c->pnode_sz);
 return err;
}
