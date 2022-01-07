
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {int dummy; } ;
struct gss_auth {int rpc_auth; } ;


 scalar_t__ IS_ERR (struct gss_auth*) ;
 struct gss_auth* gss_auth_find_or_add_hashed (struct rpc_auth_create_args const*,struct rpc_clnt*,struct gss_auth*) ;
 struct gss_auth* gss_create_new (struct rpc_auth_create_args const*,struct rpc_clnt*) ;
 int gss_destroy (int *) ;

__attribute__((used)) static struct gss_auth *
gss_create_hashed(const struct rpc_auth_create_args *args,
    struct rpc_clnt *clnt)
{
 struct gss_auth *gss_auth;
 struct gss_auth *new;

 gss_auth = gss_auth_find_or_add_hashed(args, clnt, ((void*)0));
 if (gss_auth != ((void*)0))
  goto out;
 new = gss_create_new(args, clnt);
 if (IS_ERR(new))
  return new;
 gss_auth = gss_auth_find_or_add_hashed(args, clnt, new);
 if (gss_auth != new)
  gss_destroy(&new->rpc_auth);
out:
 return gss_auth;
}
