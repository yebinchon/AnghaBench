
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int dummy; } ;


 int do_renew_lease (struct nfs_client*,unsigned long) ;
 int nfs4_has_session (struct nfs_client*) ;

__attribute__((used)) static void renew_lease(const struct nfs_server *server, unsigned long timestamp)
{
 struct nfs_client *clp = server->nfs_client;

 if (!nfs4_has_session(clp))
  do_renew_lease(clp, timestamp);
}
