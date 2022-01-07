
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_clid; } ;


 int ida_simple_remove (int *,int ) ;
 int rpc_clids ;

__attribute__((used)) static void rpc_free_clid(struct rpc_clnt *clnt)
{
 ida_simple_remove(&rpc_clids, clnt->cl_clid);
}
