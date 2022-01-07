
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct rpc_xprt* private; } ;
struct rpc_xprt {int state; int * address_strings; } ;


 size_t RPC_DISPLAY_ADDR ;
 size_t RPC_DISPLAY_NETID ;
 size_t RPC_DISPLAY_PORT ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int
xprt_info_show(struct seq_file *f, void *v)
{
 struct rpc_xprt *xprt = f->private;

 seq_printf(f, "netid: %s\n", xprt->address_strings[RPC_DISPLAY_NETID]);
 seq_printf(f, "addr:  %s\n", xprt->address_strings[RPC_DISPLAY_ADDR]);
 seq_printf(f, "port:  %s\n", xprt->address_strings[RPC_DISPLAY_PORT]);
 seq_printf(f, "state: 0x%lx\n", xprt->state);
 return 0;
}
