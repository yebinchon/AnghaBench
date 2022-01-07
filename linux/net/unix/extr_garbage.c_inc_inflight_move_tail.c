
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {int link; int gc_flags; int inflight; } ;


 int UNIX_GC_MAYBE_CYCLE ;
 int atomic_long_inc (int *) ;
 int gc_candidates ;
 int list_move_tail (int *,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void inc_inflight_move_tail(struct unix_sock *u)
{
 atomic_long_inc(&u->inflight);




 if (test_bit(UNIX_GC_MAYBE_CYCLE, &u->gc_flags))
  list_move_tail(&u->link, &gc_candidates);
}
