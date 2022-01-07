
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct ubifs_wbuf {int lnum; int offs; size_t avail; size_t size; TYPE_1__ timer; scalar_t__ next_ino; struct ubifs_info* c; int lock; int io_mutex; int * sync_callback; scalar_t__ used; int * buf; void* inodes; } ;
struct ubifs_info {size_t max_write_size; size_t leb_start; } ;
typedef int ino_t ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int UBIFS_CH_SZ ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int kfree (int *) ;
 void* kmalloc (size_t,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int wbuf_timer_callback_nolock ;

int ubifs_wbuf_init(struct ubifs_info *c, struct ubifs_wbuf *wbuf)
{
 size_t size;

 wbuf->buf = kmalloc(c->max_write_size, GFP_KERNEL);
 if (!wbuf->buf)
  return -ENOMEM;

 size = (c->max_write_size / UBIFS_CH_SZ + 1) * sizeof(ino_t);
 wbuf->inodes = kmalloc(size, GFP_KERNEL);
 if (!wbuf->inodes) {
  kfree(wbuf->buf);
  wbuf->buf = ((void*)0);
  return -ENOMEM;
 }

 wbuf->used = 0;
 wbuf->lnum = wbuf->offs = -1;






 size = c->max_write_size - (c->leb_start % c->max_write_size);
 wbuf->avail = wbuf->size = size;
 wbuf->sync_callback = ((void*)0);
 mutex_init(&wbuf->io_mutex);
 spin_lock_init(&wbuf->lock);
 wbuf->c = c;
 wbuf->next_ino = 0;

 hrtimer_init(&wbuf->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 wbuf->timer.function = wbuf_timer_callback_nolock;
 return 0;
}
