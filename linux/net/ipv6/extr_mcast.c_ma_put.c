
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmcaddr6 {int idev; int mca_refcnt; } ;


 int in6_dev_put (int ) ;
 int kfree (struct ifmcaddr6*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void ma_put(struct ifmcaddr6 *mc)
{
 if (refcount_dec_and_test(&mc->mca_refcnt)) {
  in6_dev_put(mc->idev);
  kfree(mc);
 }
}
