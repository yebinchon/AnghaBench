
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_dir_object {int pdo_head; TYPE_1__* pdo_ops; } ;
struct rpc_pipe_dir_head {int pdh_entries; scalar_t__ pdh_dentry; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* create ) (scalar_t__,struct rpc_pipe_dir_object*) ;} ;


 int list_add_tail (int *,int *) ;
 int stub1 (scalar_t__,struct rpc_pipe_dir_object*) ;

__attribute__((used)) static int
rpc_add_pipe_dir_object_locked(struct net *net,
  struct rpc_pipe_dir_head *pdh,
  struct rpc_pipe_dir_object *pdo)
{
 int ret = 0;

 if (pdh->pdh_dentry)
  ret = pdo->pdo_ops->create(pdh->pdh_dentry, pdo);
 if (ret == 0)
  list_add_tail(&pdo->pdo_head, &pdh->pdh_entries);
 return ret;
}
