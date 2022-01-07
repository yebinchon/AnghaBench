
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlog {scalar_t__ l_logsize; } ;
typedef scalar_t__ int64_t ;
typedef int atomic64_t ;


 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic64_read (int *) ;
 scalar_t__ xlog_assign_grant_head_val (int,int) ;
 int xlog_crack_grant_head_val (scalar_t__,int*,int*) ;

__attribute__((used)) static void
xlog_grant_sub_space(
 struct xlog *log,
 atomic64_t *head,
 int bytes)
{
 int64_t head_val = atomic64_read(head);
 int64_t new, old;

 do {
  int cycle, space;

  xlog_crack_grant_head_val(head_val, &cycle, &space);

  space -= bytes;
  if (space < 0) {
   space += log->l_logsize;
   cycle--;
  }

  old = head_val;
  new = xlog_assign_grant_head_val(cycle, space);
  head_val = atomic64_cmpxchg(head, old, new);
 } while (head_val != old);
}
