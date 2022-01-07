
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int lnum; scalar_t__ offs; int io_mutex; int jhead; } ;
struct ubifs_lprops {int flags; scalar_t__ free; scalar_t__ dirty; int lnum; } ;
struct ubifs_info {int gc_lnum; scalar_t__ leb_size; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOSPC ;
 size_t GCHD ;
 int LEB_RETAINED ;
 int LPROPS_INDEX ;
 int dbg_rcvry (char*,...) ;
 int grab_empty_leb (struct ubifs_info*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_err (struct ubifs_info*,char*,int) ;
 int ubifs_find_dirty_leb (struct ubifs_info*,struct ubifs_lprops*,scalar_t__,int) ;
 int ubifs_garbage_collect_leb (struct ubifs_info*,struct ubifs_lprops*) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;
 int ubifs_run_commit (struct ubifs_info*) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;

int ubifs_rcvry_gc_commit(struct ubifs_info *c)
{
 struct ubifs_wbuf *wbuf = &c->jheads[GCHD].wbuf;
 struct ubifs_lprops lp;
 int err;

 dbg_rcvry("GC head LEB %d, offs %d", wbuf->lnum, wbuf->offs);

 c->gc_lnum = -1;
 if (wbuf->lnum == -1 || wbuf->offs == c->leb_size)
  return grab_empty_leb(c);

 err = ubifs_find_dirty_leb(c, &lp, wbuf->offs, 2);
 if (err) {
  if (err != -ENOSPC)
   return err;

  dbg_rcvry("could not find a dirty LEB");
  return grab_empty_leb(c);
 }

 ubifs_assert(c, !(lp.flags & LPROPS_INDEX));
 ubifs_assert(c, lp.free + lp.dirty >= wbuf->offs);





 dbg_rcvry("committing");
 err = ubifs_run_commit(c);
 if (err)
  return err;

 dbg_rcvry("GC'ing LEB %d", lp.lnum);
 mutex_lock_nested(&wbuf->io_mutex, wbuf->jhead);
 err = ubifs_garbage_collect_leb(c, &lp);
 if (err >= 0) {
  int err2 = ubifs_wbuf_sync_nolock(wbuf);

  if (err2)
   err = err2;
 }
 mutex_unlock(&wbuf->io_mutex);
 if (err < 0) {
  ubifs_err(c, "GC failed, error %d", err);
  if (err == -EAGAIN)
   err = -EINVAL;
  return err;
 }

 ubifs_assert(c, err == LEB_RETAINED);
 if (err != LEB_RETAINED)
  return -EINVAL;

 err = ubifs_leb_unmap(c, c->gc_lnum);
 if (err)
  return err;

 dbg_rcvry("allocated LEB %d for GC", lp.lnum);
 return 0;
}
