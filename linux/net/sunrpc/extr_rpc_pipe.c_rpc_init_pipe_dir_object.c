
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_dir_object_ops {int dummy; } ;
struct rpc_pipe_dir_object {void* pdo_data; struct rpc_pipe_dir_object_ops const* pdo_ops; int pdo_head; } ;


 int INIT_LIST_HEAD (int *) ;

void rpc_init_pipe_dir_object(struct rpc_pipe_dir_object *pdo,
  const struct rpc_pipe_dir_object_ops *pdo_ops,
  void *pdo_data)
{
 INIT_LIST_HEAD(&pdo->pdo_head);
 pdo->pdo_ops = pdo_ops;
 pdo->pdo_data = pdo_data;
}
