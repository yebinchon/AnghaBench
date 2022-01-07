
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int flags; int list; } ;
struct ubifs_info {int freeable_cnt; scalar_t__ in_a_category_cnt; scalar_t__ main_lebs; int frdi_idx_list; int freeable_list; int empty_list; int uncat_list; } ;


 int LPROPS_CAT_MASK ;







 int add_to_lpt_heap (struct ubifs_info*,struct ubifs_lprops*,int) ;
 int list_add (int *,int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;

void ubifs_add_to_cat(struct ubifs_info *c, struct ubifs_lprops *lprops,
        int cat)
{
 switch (cat) {
 case 134:
 case 133:
 case 130:
  if (add_to_lpt_heap(c, lprops, cat))
   break;

  cat = 128;

 case 128:
  list_add(&lprops->list, &c->uncat_list);
  break;
 case 132:
  list_add(&lprops->list, &c->empty_list);
  break;
 case 129:
  list_add(&lprops->list, &c->freeable_list);
  c->freeable_cnt += 1;
  break;
 case 131:
  list_add(&lprops->list, &c->frdi_idx_list);
  break;
 default:
  ubifs_assert(c, 0);
 }

 lprops->flags &= ~LPROPS_CAT_MASK;
 lprops->flags |= cat;
 c->in_a_category_cnt += 1;
 ubifs_assert(c, c->in_a_category_cnt <= c->main_lebs);
}
