
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfs4_client* sc_client; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;
struct nfs4_client {int cl_lock; } ;


 int nfs4_put_stid (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_lock_stateid (struct nfs4_ol_stateid*) ;

__attribute__((used)) static void release_lock_stateid(struct nfs4_ol_stateid *stp)
{
 struct nfs4_client *clp = stp->st_stid.sc_client;
 bool unhashed;

 spin_lock(&clp->cl_lock);
 unhashed = unhash_lock_stateid(stp);
 spin_unlock(&clp->cl_lock);
 if (unhashed)
  nfs4_put_stid(&stp->st_stid);
}
