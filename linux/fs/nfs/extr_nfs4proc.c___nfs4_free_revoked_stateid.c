
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ nfs4_stateid ;


 int NFS4_REVOKED_STATEID_TYPE ;
 int nfs4_test_and_free_stateid (struct nfs_server*,TYPE_1__*,struct cred const*) ;

__attribute__((used)) static void __nfs4_free_revoked_stateid(struct nfs_server *server,
  nfs4_stateid *stateid,
  const struct cred *cred)
{
 stateid->type = NFS4_REVOKED_STATEID_TYPE;
 nfs4_test_and_free_stateid(server, stateid, cred);
}
