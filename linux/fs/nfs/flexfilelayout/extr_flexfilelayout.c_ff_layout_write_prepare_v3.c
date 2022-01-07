
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_pgio_header {int dummy; } ;


 scalar_t__ ff_layout_write_prepare_common (struct rpc_task*,struct nfs_pgio_header*) ;
 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void ff_layout_write_prepare_v3(struct rpc_task *task, void *data)
{
 struct nfs_pgio_header *hdr = data;

 if (ff_layout_write_prepare_common(task, hdr))
  return;

 rpc_call_start(task);
}
