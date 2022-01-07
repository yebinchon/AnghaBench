
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_2__ {int seq_res; } ;
struct nfs_pgio_header {int (* pgio_done_cb ) (struct rpc_task*,struct nfs_pgio_header*) ;int args; TYPE_1__ res; } ;


 int EAGAIN ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 int nfs4_write_done_cb (struct rpc_task*,struct nfs_pgio_header*) ;
 scalar_t__ nfs4_write_stateid_changed (struct rpc_task*,int *) ;
 int stub1 (struct rpc_task*,struct nfs_pgio_header*) ;

__attribute__((used)) static int nfs4_write_done(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
 if (!nfs4_sequence_done(task, &hdr->res.seq_res))
  return -EAGAIN;
 if (nfs4_write_stateid_changed(task, &hdr->args))
  return -EAGAIN;
 return hdr->pgio_done_cb ? hdr->pgio_done_cb(task, hdr) :
  nfs4_write_done_cb(task, hdr);
}
