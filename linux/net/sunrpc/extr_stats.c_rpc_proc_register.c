
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_stat {TYPE_1__* program; } ;
struct proc_dir_entry {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int name; } ;


 struct proc_dir_entry* do_register (struct net*,int ,struct rpc_stat*,int *) ;
 int rpc_proc_fops ;

struct proc_dir_entry *
rpc_proc_register(struct net *net, struct rpc_stat *statp)
{
 return do_register(net, statp->program->name, statp, &rpc_proc_fops);
}
