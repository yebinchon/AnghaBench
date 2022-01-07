
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {int me; int refcnt; } ;


 int module_put (int ) ;
 int refcount_dec (int *) ;

void nf_conntrack_helper_put(struct nf_conntrack_helper *helper)
{
 refcount_dec(&helper->refcnt);
 module_put(helper->me);
}
