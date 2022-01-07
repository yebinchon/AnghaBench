
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {unsigned int mp_aheight; int * mp_bh; } ;


 int get_bh (int ) ;

__attribute__((used)) static void clone_metapath(struct metapath *clone, struct metapath *mp)
{
 unsigned int hgt;

 *clone = *mp;
 for (hgt = 0; hgt < mp->mp_aheight; hgt++)
  get_bh(clone->mp_bh[hgt]);
}
