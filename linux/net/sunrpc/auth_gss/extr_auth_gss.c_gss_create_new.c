
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {scalar_t__ target_name; int pseudoflavor; } ;
struct rpc_auth {int au_cslack; int au_rslack; int au_verfsize; int au_ralign; int au_count; int au_flags; int au_flavor; int * au_ops; } ;
struct gss_pipe {int dummy; } ;
struct gss_auth {scalar_t__ service; struct gss_auth* target_name; int net; TYPE_1__* mech; struct gss_pipe** gss_pipe; int kref; struct rpc_auth rpc_auth; struct rpc_clnt* client; int hash; } ;
typedef int rpc_authflavor_t ;
struct TYPE_5__ {char* gm_name; } ;


 int EINVAL ;
 int ENOMEM ;
 struct gss_auth* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GSS_CRED_SLACK ;
 int GSS_VERF_SLACK ;
 int INIT_HLIST_NODE (int *) ;
 scalar_t__ IS_ERR (struct gss_pipe*) ;
 int PTR_ERR (struct gss_pipe*) ;
 int RPCAUTH_AUTH_DATATOUCH ;
 int THIS_MODULE ;
 int authgss_ops ;
 int get_net (int ) ;
 TYPE_1__* gss_mech_get_by_pseudoflavor (int ) ;
 int gss_mech_put (TYPE_1__*) ;
 int gss_pipe_free (struct gss_pipe*) ;
 struct gss_pipe* gss_pipe_get (struct rpc_clnt*,char*,int *) ;
 scalar_t__ gss_pseudoflavor_to_datatouch (TYPE_1__*,int ) ;
 scalar_t__ gss_pseudoflavor_to_service (TYPE_1__*,int ) ;
 int gss_upcall_ops_v0 ;
 int gss_upcall_ops_v1 ;
 int gssd_running (int ) ;
 int kfree (struct gss_auth*) ;
 struct gss_auth* kmalloc (int,int ) ;
 int kref_init (int *) ;
 struct gss_auth* kstrdup (scalar_t__,int ) ;
 int module_put (int ) ;
 int put_net (int ) ;
 int refcount_set (int *,int) ;
 int rpc_net_ns (struct rpc_clnt*) ;
 int rpcauth_destroy_credcache (struct rpc_auth*) ;
 int rpcauth_init_credcache (struct rpc_auth*) ;
 int trace_rpcgss_createauth (int ,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct gss_auth *
gss_create_new(const struct rpc_auth_create_args *args, struct rpc_clnt *clnt)
{
 rpc_authflavor_t flavor = args->pseudoflavor;
 struct gss_auth *gss_auth;
 struct gss_pipe *gss_pipe;
 struct rpc_auth * auth;
 int err = -ENOMEM;

 if (!try_module_get(THIS_MODULE))
  return ERR_PTR(err);
 if (!(gss_auth = kmalloc(sizeof(*gss_auth), GFP_KERNEL)))
  goto out_dec;
 INIT_HLIST_NODE(&gss_auth->hash);
 gss_auth->target_name = ((void*)0);
 if (args->target_name) {
  gss_auth->target_name = kstrdup(args->target_name, GFP_KERNEL);
  if (gss_auth->target_name == ((void*)0))
   goto err_free;
 }
 gss_auth->client = clnt;
 gss_auth->net = get_net(rpc_net_ns(clnt));
 err = -EINVAL;
 gss_auth->mech = gss_mech_get_by_pseudoflavor(flavor);
 if (!gss_auth->mech)
  goto err_put_net;
 gss_auth->service = gss_pseudoflavor_to_service(gss_auth->mech, flavor);
 if (gss_auth->service == 0)
  goto err_put_mech;
 if (!gssd_running(gss_auth->net))
  goto err_put_mech;
 auth = &gss_auth->rpc_auth;
 auth->au_cslack = GSS_CRED_SLACK >> 2;
 auth->au_rslack = GSS_VERF_SLACK >> 2;
 auth->au_verfsize = GSS_VERF_SLACK >> 2;
 auth->au_ralign = GSS_VERF_SLACK >> 2;
 auth->au_flags = 0;
 auth->au_ops = &authgss_ops;
 auth->au_flavor = flavor;
 if (gss_pseudoflavor_to_datatouch(gss_auth->mech, flavor))
  auth->au_flags |= RPCAUTH_AUTH_DATATOUCH;
 refcount_set(&auth->au_count, 1);
 kref_init(&gss_auth->kref);

 err = rpcauth_init_credcache(auth);
 if (err)
  goto err_put_mech;






 gss_pipe = gss_pipe_get(clnt, "gssd", &gss_upcall_ops_v1);
 if (IS_ERR(gss_pipe)) {
  err = PTR_ERR(gss_pipe);
  goto err_destroy_credcache;
 }
 gss_auth->gss_pipe[1] = gss_pipe;

 gss_pipe = gss_pipe_get(clnt, gss_auth->mech->gm_name,
   &gss_upcall_ops_v0);
 if (IS_ERR(gss_pipe)) {
  err = PTR_ERR(gss_pipe);
  goto err_destroy_pipe_1;
 }
 gss_auth->gss_pipe[0] = gss_pipe;

 return gss_auth;
err_destroy_pipe_1:
 gss_pipe_free(gss_auth->gss_pipe[1]);
err_destroy_credcache:
 rpcauth_destroy_credcache(auth);
err_put_mech:
 gss_mech_put(gss_auth->mech);
err_put_net:
 put_net(gss_auth->net);
err_free:
 kfree(gss_auth->target_name);
 kfree(gss_auth);
out_dec:
 module_put(THIS_MODULE);
 trace_rpcgss_createauth(flavor, err);
 return ERR_PTR(err);
}
