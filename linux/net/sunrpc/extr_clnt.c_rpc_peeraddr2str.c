
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {char const** address_strings; } ;
struct rpc_clnt {int cl_xprt; } ;
typedef enum rpc_display_format_t { ____Placeholder_rpc_display_format_t } rpc_display_format_t ;


 struct rpc_xprt* rcu_dereference (int ) ;

const char *rpc_peeraddr2str(struct rpc_clnt *clnt,
        enum rpc_display_format_t format)
{
 struct rpc_xprt *xprt;

 xprt = rcu_dereference(clnt->cl_xprt);

 if (xprt->address_strings[format] != ((void*)0))
  return xprt->address_strings[format];
 else
  return "unprintable";
}
