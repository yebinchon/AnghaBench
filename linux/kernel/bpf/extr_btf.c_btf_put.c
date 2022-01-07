
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int rcu; int refcnt; } ;


 int btf_free_id (struct btf*) ;
 int btf_free_rcu ;
 int call_rcu (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void btf_put(struct btf *btf)
{
 if (btf && refcount_dec_and_test(&btf->refcnt)) {
  btf_free_id(btf);
  call_rcu(&btf->rcu, btf_free_rcu);
 }
}
