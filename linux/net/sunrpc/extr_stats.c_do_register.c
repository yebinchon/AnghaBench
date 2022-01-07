
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int proc_net_rpc; } ;
struct proc_dir_entry {int dummy; } ;
struct net {int dummy; } ;
struct file_operations {int dummy; } ;


 int dprintk (char*,char const*) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 struct proc_dir_entry* proc_create_data (char const*,int ,int ,struct file_operations const*,void*) ;
 int sunrpc_net_id ;

__attribute__((used)) static inline struct proc_dir_entry *
do_register(struct net *net, const char *name, void *data,
     const struct file_operations *fops)
{
 struct sunrpc_net *sn;

 dprintk("RPC:       registering /proc/net/rpc/%s\n", name);
 sn = net_generic(net, sunrpc_net_id);
 return proc_create_data(name, 0, sn->proc_net_rpc, fops, data);
}
