
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_subversion {int dummy; } ;
struct nfs_server {int cred; } ;
struct nfs_mount_info {int mntfh; TYPE_2__* parsed; } ;
struct TYPE_3__ {int flavor_len; } ;
struct TYPE_4__ {TYPE_1__ auth_info; } ;


 int ENOMEM ;
 struct nfs_server* ERR_PTR (int) ;
 int current_cred () ;
 int get_cred (int ) ;
 int nfs4_init_server (struct nfs_server*,TYPE_2__*) ;
 int nfs4_server_common_setup (struct nfs_server*,int ,int) ;
 struct nfs_server* nfs_alloc_server () ;
 int nfs_free_server (struct nfs_server*) ;

struct nfs_server *nfs4_create_server(struct nfs_mount_info *mount_info,
          struct nfs_subversion *nfs_mod)
{
 struct nfs_server *server;
 bool auth_probe;
 int error;

 server = nfs_alloc_server();
 if (!server)
  return ERR_PTR(-ENOMEM);

 server->cred = get_cred(current_cred());

 auth_probe = mount_info->parsed->auth_info.flavor_len < 1;


 error = nfs4_init_server(server, mount_info->parsed);
 if (error < 0)
  goto error;

 error = nfs4_server_common_setup(server, mount_info->mntfh, auth_probe);
 if (error < 0)
  goto error;

 return server;

error:
 nfs_free_server(server);
 return ERR_PTR(error);
}
