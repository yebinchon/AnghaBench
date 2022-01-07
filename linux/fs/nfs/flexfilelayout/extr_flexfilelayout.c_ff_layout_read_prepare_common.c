
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_4__ {TYPE_1__* context; } ;
struct nfs_pgio_header {TYPE_2__ args; } ;
struct TYPE_3__ {int flags; } ;


 int EIO ;
 int NFS_CONTEXT_BAD ;
 int ff_layout_read_record_layoutstats_start (struct rpc_task*,struct nfs_pgio_header*) ;
 int rpc_exit (struct rpc_task*,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ff_layout_read_prepare_common(struct rpc_task *task,
      struct nfs_pgio_header *hdr)
{
 if (unlikely(test_bit(NFS_CONTEXT_BAD, &hdr->args.context->flags))) {
  rpc_exit(task, -EIO);
  return -EIO;
 }

 ff_layout_read_record_layoutstats_start(task, hdr);
 return 0;
}
