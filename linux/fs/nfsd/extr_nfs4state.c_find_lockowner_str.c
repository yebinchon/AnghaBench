
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int dummy; } ;
struct nfs4_lockowner {int dummy; } ;
struct nfs4_client {int cl_lock; } ;


 struct nfs4_lockowner* find_lockowner_str_locked (struct nfs4_client*,struct xdr_netobj*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_lockowner *
find_lockowner_str(struct nfs4_client *clp, struct xdr_netobj *owner)
{
 struct nfs4_lockowner *lo;

 spin_lock(&clp->cl_lock);
 lo = find_lockowner_str_locked(clp, owner);
 spin_unlock(&clp->cl_lock);
 return lo;
}
