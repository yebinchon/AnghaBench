
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_clid; } ;


 int GFP_KERNEL ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int rpc_clids ;

__attribute__((used)) static int rpc_alloc_clid(struct rpc_clnt *clnt)
{
 int clid;

 clid = ida_simple_get(&rpc_clids, 0, 0, GFP_KERNEL);
 if (clid < 0)
  return clid;
 clnt->cl_clid = clid;
 return 0;
}
