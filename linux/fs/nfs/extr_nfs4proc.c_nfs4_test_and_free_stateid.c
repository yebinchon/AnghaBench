
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs4_minor_version_ops {int (* test_and_free_expired ) (struct nfs_server*,int *,struct cred const*) ;} ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;
struct TYPE_2__ {struct nfs4_minor_version_ops* cl_mvops; } ;


 int stub1 (struct nfs_server*,int *,struct cred const*) ;

__attribute__((used)) static void nfs4_test_and_free_stateid(struct nfs_server *server,
  nfs4_stateid *stateid,
  const struct cred *cred)
{
 const struct nfs4_minor_version_ops *ops = server->nfs_client->cl_mvops;

 ops->test_and_free_expired(server, stateid, cred);
}
