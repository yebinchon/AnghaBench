
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {struct rpc_auth* cr_auth; } ;
struct rpc_auth {int au_verfsize; int au_ralign; int au_rslack; } ;



__attribute__((used)) static int
gss_unwrap_resp_auth(struct rpc_cred *cred)
{
 struct rpc_auth *auth = cred->cr_auth;

 auth->au_rslack = auth->au_verfsize;
 auth->au_ralign = auth->au_verfsize;
 return 0;
}
