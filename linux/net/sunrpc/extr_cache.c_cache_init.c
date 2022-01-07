
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct cache_head {scalar_t__ last_refresh; scalar_t__ expiry_time; int ref; scalar_t__ flags; int cache_list; } ;
struct cache_detail {scalar_t__ flush_time; } ;


 scalar_t__ CACHE_NEW_EXPIRY ;
 int INIT_HLIST_NODE (int *) ;
 int kref_init (int *) ;
 scalar_t__ seconds_since_boot () ;

__attribute__((used)) static void cache_init(struct cache_head *h, struct cache_detail *detail)
{
 time_t now = seconds_since_boot();
 INIT_HLIST_NODE(&h->cache_list);
 h->flags = 0;
 kref_init(&h->ref);
 h->expiry_time = now + CACHE_NEW_EXPIRY;
 if (now <= detail->flush_time)

  now = detail->flush_time + 1;
 h->last_refresh = now;
}
