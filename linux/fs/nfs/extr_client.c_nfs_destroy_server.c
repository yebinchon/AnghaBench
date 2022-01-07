
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {scalar_t__ nlm_host; } ;


 int nlmclnt_done (scalar_t__) ;

__attribute__((used)) static void nfs_destroy_server(struct nfs_server *server)
{
 if (server->nlm_host)
  nlmclnt_done(server->nlm_host);
}
