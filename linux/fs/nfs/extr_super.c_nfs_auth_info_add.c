
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_auth_info {scalar_t__* flavors; unsigned int flavor_len; } ;
typedef scalar_t__ rpc_authflavor_t ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int MOUNT ;
 int dfprintk (int ,char*) ;

__attribute__((used)) static bool nfs_auth_info_add(struct nfs_auth_info *auth_info,
         rpc_authflavor_t flavor)
{
 unsigned int i;
 unsigned int max_flavor_len = ARRAY_SIZE(auth_info->flavors);


 for (i = 0; i < auth_info->flavor_len; i++) {
  if (flavor == auth_info->flavors[i])
   return 1;
 }

 if (auth_info->flavor_len + 1 >= max_flavor_len) {
  dfprintk(MOUNT, "NFS: too many sec= flavors\n");
  return 0;
 }

 auth_info->flavors[auth_info->flavor_len++] = flavor;
 return 1;
}
