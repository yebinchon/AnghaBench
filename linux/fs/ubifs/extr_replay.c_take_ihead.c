
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int free; int flags; } ;
struct ubifs_info {int ihead_lnum; } ;


 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 struct ubifs_lprops* ubifs_change_lp (struct ubifs_info*,struct ubifs_lprops const*,int ,int ,int,int ) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_lpt_lookup_dirty (struct ubifs_info*,int ) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

__attribute__((used)) static int take_ihead(struct ubifs_info *c)
{
 const struct ubifs_lprops *lp;
 int err, free;

 ubifs_get_lprops(c);

 lp = ubifs_lpt_lookup_dirty(c, c->ihead_lnum);
 if (IS_ERR(lp)) {
  err = PTR_ERR(lp);
  goto out;
 }

 free = lp->free;

 lp = ubifs_change_lp(c, lp, LPROPS_NC, LPROPS_NC,
        lp->flags | LPROPS_TAKEN, 0);
 if (IS_ERR(lp)) {
  err = PTR_ERR(lp);
  goto out;
 }

 err = free;
out:
 ubifs_release_lprops(c);
 return err;
}
