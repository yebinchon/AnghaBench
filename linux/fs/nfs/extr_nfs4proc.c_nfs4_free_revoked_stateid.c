
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;


 int __nfs4_free_revoked_stateid (struct nfs_server*,int *,struct cred const*) ;
 int nfs4_stateid_copy (int *,int const*) ;

__attribute__((used)) static void nfs4_free_revoked_stateid(struct nfs_server *server,
  const nfs4_stateid *stateid,
  const struct cred *cred)
{
 nfs4_stateid tmp;

 nfs4_stateid_copy(&tmp, stateid);
 __nfs4_free_revoked_stateid(server, &tmp, cred);
}
