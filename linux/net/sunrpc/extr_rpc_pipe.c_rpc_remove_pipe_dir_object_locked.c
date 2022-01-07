
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_dir_object {int pdo_head; TYPE_1__* pdo_ops; } ;
struct rpc_pipe_dir_head {scalar_t__ pdh_dentry; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (scalar_t__,struct rpc_pipe_dir_object*) ;} ;


 int list_del_init (int *) ;
 int stub1 (scalar_t__,struct rpc_pipe_dir_object*) ;

__attribute__((used)) static void
rpc_remove_pipe_dir_object_locked(struct net *net,
  struct rpc_pipe_dir_head *pdh,
  struct rpc_pipe_dir_object *pdo)
{
 if (pdh->pdh_dentry)
  pdo->pdo_ops->destroy(pdh->pdh_dentry, pdo);
 list_del_init(&pdo->pdo_head);
}
