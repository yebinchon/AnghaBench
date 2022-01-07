
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {int interface; int refcnt; } ;


 int in_dev_put (int ) ;
 int kfree_rcu (struct ip_mc_list*,int ) ;
 int rcu ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void ip_ma_put(struct ip_mc_list *im)
{
 if (refcount_dec_and_test(&im->refcnt)) {
  in_dev_put(im->interface);
  kfree_rcu(im, rcu);
 }
}
