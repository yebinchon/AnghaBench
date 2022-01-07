
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_clnt {int dummy; } ;
struct TYPE_2__ {int (* print_stats ) (struct rpc_xprt*,struct seq_file*) ;} ;


 int stub1 (struct rpc_xprt*,struct seq_file*) ;

__attribute__((used)) static int do_print_stats(struct rpc_clnt *clnt, struct rpc_xprt *xprt, void *seqv)
{
 struct seq_file *seq = seqv;

 xprt->ops->print_stats(xprt, seq);
 return 0;
}
