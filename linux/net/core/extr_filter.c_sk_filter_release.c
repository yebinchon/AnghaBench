
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_filter {int rcu; int refcnt; } ;


 int call_rcu (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int sk_filter_release_rcu ;

__attribute__((used)) static void sk_filter_release(struct sk_filter *fp)
{
 if (refcount_dec_and_test(&fp->refcnt))
  call_rcu(&fp->rcu, sk_filter_release_rcu);
}
