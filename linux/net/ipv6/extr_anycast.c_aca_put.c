
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifacaddr6 {int rcu; int aca_refcnt; } ;


 int aca_free_rcu ;
 int call_rcu (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void aca_put(struct ifacaddr6 *ac)
{
 if (refcount_dec_and_test(&ac->aca_refcnt)) {
  call_rcu(&ac->rcu, aca_free_rcu);
 }
}
