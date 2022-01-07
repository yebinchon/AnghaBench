
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_nodename; int cl_nodelen; } ;


 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void rpc_clnt_set_nodename(struct rpc_clnt *clnt, const char *nodename)
{
 clnt->cl_nodelen = strlcpy(clnt->cl_nodename,
   nodename, sizeof(clnt->cl_nodename));
}
