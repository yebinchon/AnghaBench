
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_refill_cache {struct list_head* ready; } ;
struct list_head {struct list_head* next; } ;


 int list_del_init (struct list_head*) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static struct list_head *rds_ib_recv_cache_get(struct rds_ib_refill_cache *cache)
{
 struct list_head *head = cache->ready;

 if (head) {
  if (!list_empty(head)) {
   cache->ready = head->next;
   list_del_init(head);
  } else
   cache->ready = ((void*)0);
 }

 return head;
}
