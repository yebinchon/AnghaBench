
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;


 int rpc_remove_client_dir (struct rpc_clnt*) ;

__attribute__((used)) static void __rpc_clnt_remove_pipedir(struct rpc_clnt *clnt)
{
 rpc_remove_client_dir(clnt);
}
