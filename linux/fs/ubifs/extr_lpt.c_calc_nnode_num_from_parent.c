
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_nnode {int level; int num; } ;
struct ubifs_info {int lpt_hght; } ;


 int UBIFS_LPT_FANOUT ;
 int UBIFS_LPT_FANOUT_SHIFT ;

__attribute__((used)) static int calc_nnode_num_from_parent(const struct ubifs_info *c,
          struct ubifs_nnode *parent, int iip)
{
 int num, shft;

 if (!parent)
  return 1;
 shft = (c->lpt_hght - parent->level) * UBIFS_LPT_FANOUT_SHIFT;
 num = parent->num ^ (1 << shft);
 num |= (UBIFS_LPT_FANOUT + iip) << shft;
 return num;
}
