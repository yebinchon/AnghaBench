
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int so_strhash; } ;
struct nfs4_openowner {int oo_perclient; TYPE_1__ oo_owner; } ;
struct nfs4_client {int cl_openowners; int * cl_ownerstr_hashtbl; int cl_lock; } ;


 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void hash_openowner(struct nfs4_openowner *oo, struct nfs4_client *clp, unsigned int strhashval)
{
 lockdep_assert_held(&clp->cl_lock);

 list_add(&oo->oo_owner.so_strhash,
   &clp->cl_ownerstr_hashtbl[strhashval]);
 list_add(&oo->oo_perclient, &clp->cl_openowners);
}
