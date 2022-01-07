
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int cl_vers; int cl_prog; TYPE_1__* cl_program; int cl_xprt; } ;
struct TYPE_4__ {int servername; } ;
struct TYPE_3__ {int name; } ;


 int RPC_DISPLAY_ADDR ;
 int RPC_DISPLAY_PORT ;
 int RPC_DISPLAY_PROTO ;
 TYPE_2__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rpc_peeraddr2str (struct rpc_clnt*,int ) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static int
rpc_show_info(struct seq_file *m, void *v)
{
 struct rpc_clnt *clnt = m->private;

 rcu_read_lock();
 seq_printf(m, "RPC server: %s\n",
   rcu_dereference(clnt->cl_xprt)->servername);
 seq_printf(m, "service: %s (%d) version %d\n", clnt->cl_program->name,
   clnt->cl_prog, clnt->cl_vers);
 seq_printf(m, "address: %s\n", rpc_peeraddr2str(clnt, RPC_DISPLAY_ADDR));
 seq_printf(m, "protocol: %s\n", rpc_peeraddr2str(clnt, RPC_DISPLAY_PROTO));
 seq_printf(m, "port: %s\n", rpc_peeraddr2str(clnt, RPC_DISPLAY_PORT));
 rcu_read_unlock();
 return 0;
}
