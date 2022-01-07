
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int tk_status; } ;
struct TYPE_5__ {int eof; int count; } ;
struct TYPE_6__ {int offset; } ;
struct nfs_pgio_header {TYPE_1__ res; TYPE_2__ args; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int (* read_done ) (struct rpc_task*,struct nfs_pgio_header*) ;} ;


 int ESTALE ;
 int NFSIOS_SERVERREADBYTES ;
 TYPE_4__* NFS_I (struct inode*) ;
 int NFS_INO_STALE ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 int nfs_add_stats (struct inode*,int ,int ) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rpc_task*,struct nfs_pgio_header*) ;
 int trace_nfs_readpage_done (struct inode*,int ,int ,int ) ;

__attribute__((used)) static int nfs_readpage_done(struct rpc_task *task,
        struct nfs_pgio_header *hdr,
        struct inode *inode)
{
 int status = NFS_PROTO(inode)->read_done(task, hdr);
 if (status != 0)
  return status;

 nfs_add_stats(inode, NFSIOS_SERVERREADBYTES, hdr->res.count);
 trace_nfs_readpage_done(inode, task->tk_status,
    hdr->args.offset, hdr->res.eof);

 if (task->tk_status == -ESTALE) {
  set_bit(NFS_INO_STALE, &NFS_I(inode)->flags);
  nfs_mark_for_revalidate(inode);
 }
 return 0;
}
