
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_params {int dummy; } ;
struct ipc_ops {int (* getnew ) (struct ipc_namespace*,struct ipc_params*) ;} ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int rwsem; } ;


 int down_write (int *) ;
 int stub1 (struct ipc_namespace*,struct ipc_params*) ;
 int up_write (int *) ;

__attribute__((used)) static int ipcget_new(struct ipc_namespace *ns, struct ipc_ids *ids,
  const struct ipc_ops *ops, struct ipc_params *params)
{
 int err;

 down_write(&ids->rwsem);
 err = ops->getnew(ns, params);
 up_write(&ids->rwsem);
 return err;
}
