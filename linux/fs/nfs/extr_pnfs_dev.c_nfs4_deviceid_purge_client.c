
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_exchange_flags; } ;


 int EXCHGID4_FLAG_USE_PNFS_MDS ;
 long NFS4_DEVICE_ID_HASH_SIZE ;
 int _deviceid_purge_client (struct nfs_client const*,long) ;

void
nfs4_deviceid_purge_client(const struct nfs_client *clp)
{
 long h;

 if (!(clp->cl_exchange_flags & EXCHGID4_FLAG_USE_PNFS_MDS))
  return;
 for (h = 0; h < NFS4_DEVICE_ID_HASH_SIZE; h++)
  _deviceid_purge_client(clp, h);
}
