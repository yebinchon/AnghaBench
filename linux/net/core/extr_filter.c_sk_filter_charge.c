
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_filter {int refcnt; } ;


 int __sk_filter_charge (struct sock*,struct sk_filter*) ;
 int refcount_inc_not_zero (int *) ;
 int sk_filter_release (struct sk_filter*) ;

bool sk_filter_charge(struct sock *sk, struct sk_filter *fp)
{
 if (!refcount_inc_not_zero(&fp->refcnt))
  return 0;

 if (!__sk_filter_charge(sk, fp)) {
  sk_filter_release(fp);
  return 0;
 }
 return 1;
}
