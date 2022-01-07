
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;
struct nfs_pgio_header {TYPE_2__ args; TYPE_1__ res; } ;


 int nfs_writeback_update_inode (struct nfs_pgio_header*) ;

__attribute__((used)) static int nfs_write_done(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
 if (task->tk_status >= 0) {
  hdr->res.count = hdr->args.count;
  nfs_writeback_update_inode(hdr);
 }
 return 0;
}
