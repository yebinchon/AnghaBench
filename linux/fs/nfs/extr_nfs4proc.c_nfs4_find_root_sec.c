
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t flavor_len; int const* flavors; } ;
struct nfs_server {TYPE_1__ auth_info; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;
typedef int rpc_authflavor_t ;


 size_t ARRAY_SIZE (int const*) ;
 int EACCES ;
 int EPERM ;
 int NFS4ERR_WRONGSEC ;





 int nfs4_lookup_root_sec (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*,int const) ;

__attribute__((used)) static int nfs4_find_root_sec(struct nfs_server *server, struct nfs_fh *fhandle,
         struct nfs_fsinfo *info)
{

 static const rpc_authflavor_t flav_array[] = {
  130,
  131,
  132,
  128,
  129,
 };
 int status = -EPERM;
 size_t i;

 if (server->auth_info.flavor_len > 0) {

  for (i = 0; i < server->auth_info.flavor_len; i++) {
   status = nfs4_lookup_root_sec(server, fhandle, info,
      server->auth_info.flavors[i]);
   if (status == -NFS4ERR_WRONGSEC || status == -EACCES)
    continue;
   break;
  }
 } else {

  for (i = 0; i < ARRAY_SIZE(flav_array); i++) {
   status = nfs4_lookup_root_sec(server, fhandle, info,
            flav_array[i]);
   if (status == -NFS4ERR_WRONGSEC || status == -EACCES)
    continue;
   break;
  }
 }
 if (status == -EACCES)
  status = -EPERM;
 return status;
}
