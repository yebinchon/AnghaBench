
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int i_ctime; int i_mtime; } ;
struct nfs_inode {TYPE_3__ vfs_inode; } ;
struct nfs_fscache_inode_auxdata {int change_attr; void* ctime; void* mtime; } ;
typedef int loff_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
typedef int auxdata ;
struct TYPE_9__ {TYPE_2__* nfs_client; } ;
struct TYPE_7__ {TYPE_1__* rpc_ops; } ;
struct TYPE_6__ {int version; } ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 TYPE_4__* NFS_SERVER (TYPE_3__*) ;
 int inode_peek_iversion_raw (TYPE_3__*) ;
 scalar_t__ memcmp (void const*,struct nfs_fscache_inode_auxdata*,int) ;
 int memset (struct nfs_fscache_inode_auxdata*,int ,int) ;
 void* timespec64_to_timespec (int ) ;

__attribute__((used)) static
enum fscache_checkaux nfs_fscache_inode_check_aux(void *cookie_netfs_data,
        const void *data,
        uint16_t datalen,
        loff_t object_size)
{
 struct nfs_fscache_inode_auxdata auxdata;
 struct nfs_inode *nfsi = cookie_netfs_data;

 if (datalen != sizeof(auxdata))
  return FSCACHE_CHECKAUX_OBSOLETE;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.mtime = timespec64_to_timespec(nfsi->vfs_inode.i_mtime);
 auxdata.ctime = timespec64_to_timespec(nfsi->vfs_inode.i_ctime);

 if (NFS_SERVER(&nfsi->vfs_inode)->nfs_client->rpc_ops->version == 4)
  auxdata.change_attr = inode_peek_iversion_raw(&nfsi->vfs_inode);

 if (memcmp(data, &auxdata, datalen) != 0)
  return FSCACHE_CHECKAUX_OBSOLETE;

 return FSCACHE_CHECKAUX_OKAY;
}
