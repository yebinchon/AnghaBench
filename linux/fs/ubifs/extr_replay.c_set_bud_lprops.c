
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_lprops {int dirty; scalar_t__ free; int flags; } ;
struct ubifs_info {scalar_t__ leb_size; TYPE_1__* jheads; } ;
struct bud_entry {scalar_t__ free; int dirty; TYPE_2__* bud; } ;
struct TYPE_4__ {scalar_t__ start; size_t jhead; int lnum; } ;
struct TYPE_3__ {int wbuf; } ;


 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int LPROPS_TAKEN ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 int dbg_gc (char*,int ,scalar_t__,int) ;
 int dbg_mnt (char*,int ,scalar_t__,int,...) ;
 struct ubifs_lprops* ubifs_change_lp (struct ubifs_info*,struct ubifs_lprops const*,scalar_t__,int,int,int ) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_lpt_lookup_dirty (struct ubifs_info*,int ) ;
 int ubifs_release_lprops (struct ubifs_info*) ;
 int ubifs_wbuf_seek_nolock (int *,int ,scalar_t__) ;

__attribute__((used)) static int set_bud_lprops(struct ubifs_info *c, struct bud_entry *b)
{
 const struct ubifs_lprops *lp;
 int err = 0, dirty;

 ubifs_get_lprops(c);

 lp = ubifs_lpt_lookup_dirty(c, b->bud->lnum);
 if (IS_ERR(lp)) {
  err = PTR_ERR(lp);
  goto out;
 }

 dirty = lp->dirty;
 if (b->bud->start == 0 && (lp->free != c->leb_size || lp->dirty != 0)) {
  dbg_mnt("bud LEB %d was GC'd (%d free, %d dirty)", b->bud->lnum,
   lp->free, lp->dirty);
  dbg_gc("bud LEB %d was GC'd (%d free, %d dirty)", b->bud->lnum,
   lp->free, lp->dirty);
  dirty -= c->leb_size - lp->free;







  if (dirty != 0)
   dbg_mnt("LEB %d lp: %d free %d dirty replay: %d free %d dirty",
    b->bud->lnum, lp->free, lp->dirty, b->free,
    b->dirty);
 }
 lp = ubifs_change_lp(c, lp, b->free, dirty + b->dirty,
        lp->flags | LPROPS_TAKEN, 0);
 if (IS_ERR(lp)) {
  err = PTR_ERR(lp);
  goto out;
 }


 err = ubifs_wbuf_seek_nolock(&c->jheads[b->bud->jhead].wbuf,
         b->bud->lnum, c->leb_size - b->free);

out:
 ubifs_release_lprops(c);
 return err;
}
