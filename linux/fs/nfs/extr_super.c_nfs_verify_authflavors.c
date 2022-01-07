
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* flavors; } ;
struct nfs_parsed_mount_data {scalar_t__ selected_flavor; TYPE_1__ auth_info; } ;
typedef scalar_t__ rpc_authflavor_t ;


 int EACCES ;
 int MOUNT ;
 scalar_t__ RPC_AUTH_MAXFLAVOR ;
 scalar_t__ RPC_AUTH_NULL ;
 int dfprintk (int ,char*,...) ;
 scalar_t__ nfs_auth_info_match (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int nfs_verify_authflavors(struct nfs_parsed_mount_data *args,
   rpc_authflavor_t *server_authlist, unsigned int count)
{
 rpc_authflavor_t flavor = RPC_AUTH_MAXFLAVOR;
 bool found_auth_null = 0;
 unsigned int i;
 for (i = 0; i < count; i++) {
  flavor = server_authlist[i];

  if (nfs_auth_info_match(&args->auth_info, flavor))
   goto out;

  if (flavor == RPC_AUTH_NULL)
   found_auth_null = 1;
 }

 if (found_auth_null) {
  flavor = args->auth_info.flavors[0];
  goto out;
 }

 dfprintk(MOUNT,
   "NFS: specified auth flavors not supported by server\n");
 return -EACCES;

out:
 args->selected_flavor = flavor;
 dfprintk(MOUNT, "NFS: using auth flavor %u\n", args->selected_flavor);
 return 0;
}
