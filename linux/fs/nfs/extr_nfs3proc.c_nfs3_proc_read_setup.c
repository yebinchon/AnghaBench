
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_message {int * rpc_proc; } ;
struct TYPE_3__ {int replen; } ;
struct nfs_pgio_header {int inode; TYPE_1__ args; } ;
struct TYPE_4__ {int read_hdrsize; } ;


 size_t NFS3PROC_READ ;
 TYPE_2__* NFS_SERVER (int ) ;
 int * nfs3_procedures ;

__attribute__((used)) static void nfs3_proc_read_setup(struct nfs_pgio_header *hdr,
     struct rpc_message *msg)
{
 msg->rpc_proc = &nfs3_procedures[NFS3PROC_READ];
 hdr->args.replen = NFS_SERVER(hdr->inode)->read_hdrsize;
}
