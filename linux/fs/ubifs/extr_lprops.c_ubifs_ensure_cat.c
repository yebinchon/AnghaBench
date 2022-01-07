
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int flags; } ;
struct ubifs_info {int dummy; } ;


 int LPROPS_CAT_MASK ;
 int LPROPS_UNCAT ;
 int ubifs_add_to_cat (struct ubifs_info*,struct ubifs_lprops*,int) ;
 int ubifs_categorize_lprops (struct ubifs_info*,struct ubifs_lprops*) ;
 int ubifs_remove_from_cat (struct ubifs_info*,struct ubifs_lprops*,int) ;

void ubifs_ensure_cat(struct ubifs_info *c, struct ubifs_lprops *lprops)
{
 int cat = lprops->flags & LPROPS_CAT_MASK;

 if (cat != LPROPS_UNCAT)
  return;
 cat = ubifs_categorize_lprops(c, lprops);
 if (cat == LPROPS_UNCAT)
  return;
 ubifs_remove_from_cat(c, lprops, LPROPS_UNCAT);
 ubifs_add_to_cat(c, lprops, cat);
}
