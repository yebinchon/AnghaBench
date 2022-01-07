
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;
struct cred {int dummy; } ;


 struct cred* nfs4_get_machine_cred (struct nfs_client*) ;

const struct cred *nfs4_get_clid_cred(struct nfs_client *clp)
{
 const struct cred *cred;

 cred = nfs4_get_machine_cred(clp);
 return cred;
}
