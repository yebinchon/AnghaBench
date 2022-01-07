
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int lnum; scalar_t__ used; int offs; int size; int avail; int lock; int jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int min_io_size; int max_write_size; } ;


 int ALIGN (int,int) ;
 int dbg_io (char*,int,int,int ) ;
 int dbg_jhead (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (struct ubifs_info const*,int) ;

int ubifs_wbuf_seek_nolock(struct ubifs_wbuf *wbuf, int lnum, int offs)
{
 const struct ubifs_info *c = wbuf->c;

 dbg_io("LEB %d:%d, jhead %s", lnum, offs, dbg_jhead(wbuf->jhead));
 ubifs_assert(c, lnum >= 0 && lnum < c->leb_cnt);
 ubifs_assert(c, offs >= 0 && offs <= c->leb_size);
 ubifs_assert(c, offs % c->min_io_size == 0 && !(offs & 7));
 ubifs_assert(c, lnum != wbuf->lnum);
 ubifs_assert(c, wbuf->used == 0);

 spin_lock(&wbuf->lock);
 wbuf->lnum = lnum;
 wbuf->offs = offs;
 if (c->leb_size - wbuf->offs < c->max_write_size)
  wbuf->size = c->leb_size - wbuf->offs;
 else if (wbuf->offs & (c->max_write_size - 1))
  wbuf->size = ALIGN(wbuf->offs, c->max_write_size) - wbuf->offs;
 else
  wbuf->size = c->max_write_size;
 wbuf->avail = wbuf->size;
 wbuf->used = 0;
 spin_unlock(&wbuf->lock);

 return 0;
}
