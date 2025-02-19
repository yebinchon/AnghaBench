
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct TYPE_6__ {scalar_t__ version; int port; int addrlen; TYPE_1__ address; scalar_t__ hostname; int protocol; } ;
struct TYPE_5__ {int addrlen; int address; scalar_t__ hostname; int export_path; } ;
struct nfs_parsed_mount_data {int flags; int version; TYPE_3__ mount_server; TYPE_2__ nfs_server; int net; } ;
struct nfs_mount_request {int noresvport; unsigned int* auth_flav_len; scalar_t__ version; scalar_t__ hostname; struct sockaddr* sap; int salen; int net; int * auth_flavs; struct nfs_fh* fh; int protocol; int dirpath; } ;
struct nfs_fh {int dummy; } ;
typedef int rpc_authflavor_t ;


 scalar_t__ AF_UNSPEC ;
 int MOUNT ;
 scalar_t__ NFS_MNT3_VERSION ;
 scalar_t__ NFS_MNT_VERSION ;
 int NFS_MOUNT_NORESVPORT ;
 int dfprintk (int ,char*,scalar_t__,int) ;
 int memcpy (struct sockaddr*,int *,int ) ;
 int nfs_mount (struct nfs_mount_request*) ;
 int nfs_set_port (struct sockaddr*,int *,int ) ;

__attribute__((used)) static int nfs_request_mount(struct nfs_parsed_mount_data *args,
        struct nfs_fh *root_fh,
        rpc_authflavor_t *server_authlist,
        unsigned int *server_authlist_len)
{
 struct nfs_mount_request request = {
  .sap = (struct sockaddr *)
      &args->mount_server.address,
  .dirpath = args->nfs_server.export_path,
  .protocol = args->mount_server.protocol,
  .fh = root_fh,
  .noresvport = args->flags & NFS_MOUNT_NORESVPORT,
  .auth_flav_len = server_authlist_len,
  .auth_flavs = server_authlist,
  .net = args->net,
 };
 int status;

 if (args->mount_server.version == 0) {
  switch (args->version) {
   default:
    args->mount_server.version = NFS_MNT3_VERSION;
    break;
   case 2:
    args->mount_server.version = NFS_MNT_VERSION;
  }
 }
 request.version = args->mount_server.version;

 if (args->mount_server.hostname)
  request.hostname = args->mount_server.hostname;
 else
  request.hostname = args->nfs_server.hostname;




 if (args->mount_server.address.ss_family == AF_UNSPEC) {
  memcpy(request.sap, &args->nfs_server.address,
         args->nfs_server.addrlen);
  args->mount_server.addrlen = args->nfs_server.addrlen;
 }
 request.salen = args->mount_server.addrlen;
 nfs_set_port(request.sap, &args->mount_server.port, 0);





 status = nfs_mount(&request);
 if (status != 0) {
  dfprintk(MOUNT, "NFS: unable to mount server %s, error %d\n",
    request.hostname, status);
  return status;
 }

 return 0;
}
