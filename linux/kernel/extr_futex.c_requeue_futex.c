
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union futex_key {int dummy; } futex_key ;
struct futex_q {union futex_key key; int * lock_ptr; int list; } ;
struct futex_hash_bucket {int lock; int chain; } ;


 int get_futex_key_refs (union futex_key*) ;
 int hb_waiters_dec (struct futex_hash_bucket*) ;
 int hb_waiters_inc (struct futex_hash_bucket*) ;
 scalar_t__ likely (int) ;
 int plist_add (int *,int *) ;
 int plist_del (int *,int *) ;

__attribute__((used)) static inline
void requeue_futex(struct futex_q *q, struct futex_hash_bucket *hb1,
     struct futex_hash_bucket *hb2, union futex_key *key2)
{





 if (likely(&hb1->chain != &hb2->chain)) {
  plist_del(&q->list, &hb1->chain);
  hb_waiters_dec(hb1);
  hb_waiters_inc(hb2);
  plist_add(&q->list, &hb2->chain);
  q->lock_ptr = &hb2->lock;
 }
 get_futex_key_refs(key2);
 q->key = *key2;
}
