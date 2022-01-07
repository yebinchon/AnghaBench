
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int flags; } ;
struct cache_detail {int dummy; } ;


 int CACHE_PENDING ;
 int cache_dequeue (struct cache_detail*,struct cache_head*) ;
 int cache_revisit_request (struct cache_head*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void cache_fresh_unlocked(struct cache_head *head,
     struct cache_detail *detail)
{
 if (test_and_clear_bit(CACHE_PENDING, &head->flags)) {
  cache_revisit_request(head);
  cache_dequeue(detail, head);
 }
}
