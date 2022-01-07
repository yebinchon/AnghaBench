
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int so_strhash; struct nfs4_client* so_client; } ;
struct nfs4_openowner {int oo_perclient; TYPE_1__ oo_owner; } ;
struct nfs4_client {int cl_lock; } ;


 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void unhash_openowner_locked(struct nfs4_openowner *oo)
{
 struct nfs4_client *clp = oo->oo_owner.so_client;

 lockdep_assert_held(&clp->cl_lock);

 list_del_init(&oo->oo_owner.so_strhash);
 list_del_init(&oo->oo_perclient);
}
