
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ neigh_priv_len; } ;
struct TYPE_2__ {int hh_lock; } ;
struct neighbour {unsigned long updated; unsigned long used; int dead; int gc_list; int refcnt; struct neigh_table* tbl; int timer; int parms; TYPE_1__ hh; int output; int nud_state; int ha_lock; int lock; int arp_queue; } ;
struct neigh_table {int gc_thresh3; int gc_thresh2; int gc_entries; int entries; int parms; scalar_t__ entry_size; int id; scalar_t__ last_flush; } ;


 int GFP_ATOMIC ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int NUD_NONE ;
 int __skb_queue_head_init (int *) ;
 int allocs ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 unsigned long jiffies ;
 struct neighbour* kzalloc (scalar_t__,int ) ;
 int neigh_blackhole ;
 int neigh_forced_gc (struct neigh_table*) ;
 int neigh_parms_clone (int *) ;
 int neigh_timer_handler ;
 int net_info_ratelimited (char*,int ) ;
 int refcount_set (int *,int) ;
 int rwlock_init (int *) ;
 int seqlock_init (int *) ;
 int table_fulls ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct neighbour *neigh_alloc(struct neigh_table *tbl,
         struct net_device *dev,
         bool exempt_from_gc)
{
 struct neighbour *n = ((void*)0);
 unsigned long now = jiffies;
 int entries;

 if (exempt_from_gc)
  goto do_alloc;

 entries = atomic_inc_return(&tbl->gc_entries) - 1;
 if (entries >= tbl->gc_thresh3 ||
     (entries >= tbl->gc_thresh2 &&
      time_after(now, tbl->last_flush + 5 * HZ))) {
  if (!neigh_forced_gc(tbl) &&
      entries >= tbl->gc_thresh3) {
   net_info_ratelimited("%s: neighbor table overflow!\n",
          tbl->id);
   NEIGH_CACHE_STAT_INC(tbl, table_fulls);
   goto out_entries;
  }
 }

do_alloc:
 n = kzalloc(tbl->entry_size + dev->neigh_priv_len, GFP_ATOMIC);
 if (!n)
  goto out_entries;

 __skb_queue_head_init(&n->arp_queue);
 rwlock_init(&n->lock);
 seqlock_init(&n->ha_lock);
 n->updated = n->used = now;
 n->nud_state = NUD_NONE;
 n->output = neigh_blackhole;
 seqlock_init(&n->hh.hh_lock);
 n->parms = neigh_parms_clone(&tbl->parms);
 timer_setup(&n->timer, neigh_timer_handler, 0);

 NEIGH_CACHE_STAT_INC(tbl, allocs);
 n->tbl = tbl;
 refcount_set(&n->refcnt, 1);
 n->dead = 1;
 INIT_LIST_HEAD(&n->gc_list);

 atomic_inc(&tbl->entries);
out:
 return n;

out_entries:
 if (!exempt_from_gc)
  atomic_dec(&tbl->gc_entries);
 goto out;
}
