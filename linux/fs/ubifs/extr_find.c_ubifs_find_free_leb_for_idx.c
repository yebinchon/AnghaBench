
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lprops {int lnum; int flags; int dirty; int free; } ;
struct TYPE_2__ {scalar_t__ empty_lebs; scalar_t__ taken_empty_lebs; } ;
struct ubifs_info {scalar_t__ in_a_category_cnt; scalar_t__ main_lebs; scalar_t__ freeable_cnt; int leb_size; TYPE_1__ lst; } ;


 int ENOSPC ;
 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int LPROPS_INDEX ;
 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 int dbg_find (char*,int,int ,int ,int) ;
 struct ubifs_lprops* scan_for_leb_for_idx (struct ubifs_info*) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 struct ubifs_lprops* ubifs_change_lp (struct ubifs_info*,struct ubifs_lprops const*,int ,int ,int,int ) ;
 int ubifs_change_one_lp (struct ubifs_info*,int,int ,int ,int ,int,int ) ;
 struct ubifs_lprops* ubifs_fast_find_empty (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_fast_find_freeable (struct ubifs_info*) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

int ubifs_find_free_leb_for_idx(struct ubifs_info *c)
{
 const struct ubifs_lprops *lprops;
 int lnum = -1, err, flags;

 ubifs_get_lprops(c);

 lprops = ubifs_fast_find_empty(c);
 if (!lprops) {
  lprops = ubifs_fast_find_freeable(c);
  if (!lprops) {







   if (c->in_a_category_cnt != c->main_lebs ||
       c->lst.empty_lebs - c->lst.taken_empty_lebs > 0) {
    ubifs_assert(c, c->freeable_cnt == 0);
    lprops = scan_for_leb_for_idx(c);
    if (IS_ERR(lprops)) {
     err = PTR_ERR(lprops);
     goto out;
    }
   }
  }
 }

 if (!lprops) {
  err = -ENOSPC;
  goto out;
 }

 lnum = lprops->lnum;

 dbg_find("found LEB %d, free %d, dirty %d, flags %#x",
   lnum, lprops->free, lprops->dirty, lprops->flags);

 flags = lprops->flags | LPROPS_TAKEN | LPROPS_INDEX;
 lprops = ubifs_change_lp(c, lprops, c->leb_size, 0, flags, 0);
 if (IS_ERR(lprops)) {
  err = PTR_ERR(lprops);
  goto out;
 }

 ubifs_release_lprops(c);






 err = ubifs_leb_unmap(c, lnum);
 if (err) {
  ubifs_change_one_lp(c, lnum, LPROPS_NC, LPROPS_NC, 0,
        LPROPS_TAKEN | LPROPS_INDEX, 0);
  return err;
 }

 return lnum;

out:
 ubifs_release_lprops(c);
 return err;
}
