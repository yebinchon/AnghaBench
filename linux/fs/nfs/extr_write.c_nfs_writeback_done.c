
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_10__ {scalar_t__ stable; int offset; } ;
struct TYPE_9__ {TYPE_4__* verf; int count; } ;
struct nfs_pgio_header {TYPE_3__ args; TYPE_2__ res; } ;
struct inode {int i_lock; } ;
struct TYPE_14__ {int cache_validity; } ;
struct TYPE_13__ {int (* write_done ) (struct rpc_task*,struct nfs_pgio_header*) ;} ;
struct TYPE_12__ {TYPE_1__* nfs_client; } ;
struct TYPE_11__ {scalar_t__ committed; } ;
struct TYPE_8__ {int cl_hostname; } ;


 int HZ ;
 int NFSIOS_SERVERWRITTENBYTES ;
 TYPE_7__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_OTHER ;
 TYPE_6__* NFS_PROTO (struct inode*) ;
 TYPE_5__* NFS_SERVER (struct inode*) ;
 int dprintk (char*,int ,scalar_t__,scalar_t__) ;
 int jiffies ;
 int nfs_add_stats (struct inode*,int ,int ) ;
 scalar_t__ nfs_should_remove_suid (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_task*,struct nfs_pgio_header*) ;
 scalar_t__ time_before (unsigned long,int) ;
 int trace_nfs_writeback_done (struct inode*,scalar_t__,int ,TYPE_4__*) ;

__attribute__((used)) static int nfs_writeback_done(struct rpc_task *task,
         struct nfs_pgio_header *hdr,
         struct inode *inode)
{
 int status;
 status = NFS_PROTO(inode)->write_done(task, hdr);
 if (status != 0)
  return status;

 nfs_add_stats(inode, NFSIOS_SERVERWRITTENBYTES, hdr->res.count);
 trace_nfs_writeback_done(inode, task->tk_status,
     hdr->args.offset, hdr->res.verf);

 if (hdr->res.verf->committed < hdr->args.stable &&
     task->tk_status >= 0) {
  static unsigned long complain;


  if (time_before(complain, jiffies)) {
   dprintk("NFS:       faulty NFS server %s:"
    " (committed = %d) != (stable = %d)\n",
    NFS_SERVER(inode)->nfs_client->cl_hostname,
    hdr->res.verf->committed, hdr->args.stable);
   complain = jiffies + 300 * HZ;
  }
 }


 if (nfs_should_remove_suid(inode)) {
  spin_lock(&inode->i_lock);
  NFS_I(inode)->cache_validity |= NFS_INO_INVALID_OTHER;
  spin_unlock(&inode->i_lock);
 }
 return 0;
}
