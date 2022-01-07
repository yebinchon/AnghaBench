
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_cp_table; } ;


 TYPE_1__* hpfs_sb (struct super_block*) ;
 unsigned char upcase (int ,unsigned char const) ;

int hpfs_compare_names(struct super_block *s,
         const unsigned char *n1, unsigned l1,
         const unsigned char *n2, unsigned l2, int last)
{
 unsigned l = l1 < l2 ? l1 : l2;
 unsigned i;
 if (last) return -1;
 for (i = 0; i < l; i++) {
  unsigned char c1 = upcase(hpfs_sb(s)->sb_cp_table,n1[i]);
  unsigned char c2 = upcase(hpfs_sb(s)->sb_cp_table,n2[i]);
  if (c1 < c2) return -1;
  if (c1 > c2) return 1;
 }
 if (l1 < l2) return -1;
 if (l1 > l2) return 1;
 return 0;
}
