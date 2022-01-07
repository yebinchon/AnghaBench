
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int used; int offs; int lnum; int io_mutex; int jhead; } ;
struct ubifs_lprops {int lnum; scalar_t__ dirty; scalar_t__ free; } ;
struct ubifs_info {int dead_wm; int leb_size; int dark_wm; int gc_lnum; int idx_gc; scalar_t__ ro_error; int ro_mount; int ro_media; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;


 int EAGAIN ;
 int ENOSPC ;
 int EROFS ;
 size_t GCHD ;
 int HARD_LEBS_LIMIT ;
 int LEB_FREED ;
 int LEB_FREED_IDX ;
 int LEB_RETAINED ;
 int SOFT_LEBS_LIMIT ;
 int cond_resched () ;
 int dbg_gc (char*,...) ;
 int list_empty (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_assert_cmt_locked (struct ubifs_info*) ;
 int ubifs_commit_required (struct ubifs_info*) ;
 int ubifs_find_dirty_leb (struct ubifs_info*,struct ubifs_lprops*,int,int) ;
 int ubifs_garbage_collect_leb (struct ubifs_info*,struct ubifs_lprops*) ;
 scalar_t__ ubifs_gc_should_commit (struct ubifs_info*) ;
 int ubifs_leb_unmap (struct ubifs_info*,int ) ;
 int ubifs_return_leb (struct ubifs_info*,int) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;

int ubifs_garbage_collect(struct ubifs_info *c, int anyway)
{
 int i, err, ret, min_space = c->dead_wm;
 struct ubifs_lprops lp;
 struct ubifs_wbuf *wbuf = &c->jheads[GCHD].wbuf;

 ubifs_assert_cmt_locked(c);
 ubifs_assert(c, !c->ro_media && !c->ro_mount);

 if (ubifs_gc_should_commit(c))
  return -EAGAIN;

 mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);

 if (c->ro_error) {
  ret = -EROFS;
  goto out_unlock;
 }


 ubifs_assert(c, !wbuf->used);

 for (i = 0; ; i++) {
  int space_before, space_after;

  cond_resched();


  if (ubifs_gc_should_commit(c)) {
   ret = -EAGAIN;
   break;
  }

  if (i > SOFT_LEBS_LIMIT && !list_empty(&c->idx_gc)) {




   dbg_gc("soft limit, some index LEBs GC'ed, -EAGAIN");
   ubifs_commit_required(c);
   ret = -EAGAIN;
   break;
  }

  if (i > HARD_LEBS_LIMIT) {




   dbg_gc("hard limit, -ENOSPC");
   ret = -ENOSPC;
   break;
  }
  ret = ubifs_find_dirty_leb(c, &lp, min_space, anyway ? 0 : 1);
  if (ret) {
   if (ret == -ENOSPC)
    dbg_gc("no more dirty LEBs");
   break;
  }

  dbg_gc("found LEB %d: free %d, dirty %d, sum %d (min. space %d)",
         lp.lnum, lp.free, lp.dirty, lp.free + lp.dirty,
         min_space);

  space_before = c->leb_size - wbuf->offs - wbuf->used;
  if (wbuf->lnum == -1)
   space_before = 0;

  ret = ubifs_garbage_collect_leb(c, &lp);
  if (ret < 0) {
   if (ret == -EAGAIN) {






    err = ubifs_return_leb(c, lp.lnum);
    if (err)
     ret = err;
    break;
   }
   goto out;
  }

  if (ret == LEB_FREED) {

   dbg_gc("LEB %d freed, return", lp.lnum);
   ret = lp.lnum;
   break;
  }

  if (ret == LEB_FREED_IDX) {






   dbg_gc("indexing LEB %d freed, continue", lp.lnum);
   continue;
  }

  ubifs_assert(c, ret == LEB_RETAINED);
  space_after = c->leb_size - wbuf->offs - wbuf->used;
  dbg_gc("LEB %d retained, freed %d bytes", lp.lnum,
         space_after - space_before);

  if (space_after > space_before) {

   min_space >>= 1;
   if (min_space < c->dead_wm)
    min_space = c->dead_wm;
   continue;
  }

  dbg_gc("did not make progress");
  if (i < SOFT_LEBS_LIMIT) {
   dbg_gc("try again");
   continue;
  }

  min_space <<= 1;
  if (min_space > c->dark_wm)
   min_space = c->dark_wm;
  dbg_gc("set min. space to %d", min_space);
 }

 if (ret == -ENOSPC && !list_empty(&c->idx_gc)) {
  dbg_gc("no space, some index LEBs GC'ed, -EAGAIN");
  ubifs_commit_required(c);
  ret = -EAGAIN;
 }

 err = ubifs_wbuf_sync_nolock(wbuf);
 if (!err)
  err = ubifs_leb_unmap(c, c->gc_lnum);
 if (err) {
  ret = err;
  goto out;
 }
out_unlock:
 mutex_unlock(&wbuf->io_mutex);
 return ret;

out:
 ubifs_assert(c, ret < 0);
 ubifs_assert(c, ret != -ENOSPC && ret != -EAGAIN);
 ubifs_wbuf_sync_nolock(wbuf);
 ubifs_ro_mode(c, ret);
 mutex_unlock(&wbuf->io_mutex);
 ubifs_return_leb(c, lp.lnum);
 return ret;
}
