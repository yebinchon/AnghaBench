
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lp_stats {int dummy; } ;
struct ubifs_info {int freeable_cnt; int space_lock; int idx_gc_cnt; int bi; int lst; struct ubifs_debug_info* dbg; } ;
struct ubifs_debug_info {int saved_free; int saved_idx_gc_cnt; int saved_bi; int saved_lst; } ;
struct ubifs_budg_info {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_get_free_space_nolock (struct ubifs_info*) ;

void dbg_save_space_info(struct ubifs_info *c)
{
 struct ubifs_debug_info *d = c->dbg;
 int freeable_cnt;

 spin_lock(&c->space_lock);
 memcpy(&d->saved_lst, &c->lst, sizeof(struct ubifs_lp_stats));
 memcpy(&d->saved_bi, &c->bi, sizeof(struct ubifs_budg_info));
 d->saved_idx_gc_cnt = c->idx_gc_cnt;
 freeable_cnt = c->freeable_cnt;
 c->freeable_cnt = 0;
 d->saved_free = ubifs_get_free_space_nolock(c);
 c->freeable_cnt = freeable_cnt;
 spin_unlock(&c->space_lock);
}
