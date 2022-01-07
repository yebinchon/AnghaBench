
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int so_strhash; struct nfs4_client* so_client; } ;
struct nfs4_lockowner {TYPE_1__ lo_owner; } ;
struct nfs4_client {int cl_lock; } ;


 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void unhash_lockowner_locked(struct nfs4_lockowner *lo)
{
 struct nfs4_client *clp = lo->lo_owner.so_client;

 lockdep_assert_held(&clp->cl_lock);

 list_del_init(&lo->lo_owner.so_strhash);
}
