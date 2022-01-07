
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_auth_info {int flavor_len; scalar_t__* flavors; } ;
typedef scalar_t__ rpc_authflavor_t ;



bool nfs_auth_info_match(const struct nfs_auth_info *auth_info,
    rpc_authflavor_t match)
{
 int i;

 if (!auth_info->flavor_len)
  return 1;

 for (i = 0; i < auth_info->flavor_len; i++) {
  if (auth_info->flavors[i] == match)
   return 1;
 }
 return 0;
}
