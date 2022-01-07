
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {struct rpc_timeout* timeout; } ;
struct rpc_version {int number; int nrprocs; int procs; } ;
struct rpc_timeout {int dummy; } ;
struct rpc_program {size_t nrvers; int stats; int number; struct rpc_version** version; int name; } ;
struct rpc_create_args {char* nodename; size_t version; int client_name; int authflavor; int * timeout; scalar_t__ prognumber; int cred; int servername; struct rpc_program* program; } ;
struct rpc_clnt {int cl_cred; int * cl_metrics; int cl_count; TYPE_1__* cl_timeout; int cl_rtt_default; int * cl_rtt; int cl_xpi; struct rpc_timeout cl_timeout_default; int cl_lock; int cl_tasks; struct rpc_program const* cl_program; int cl_pipedir_objects; int cl_stats; int cl_vers; int cl_prog; int cl_maxproc; int cl_procinfo; struct rpc_clnt* cl_parent; } ;
struct TYPE_4__ {char* nodename; } ;
struct TYPE_3__ {int to_initval; } ;


 int EINVAL ;
 int ENOMEM ;
 struct rpc_clnt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int dprintk (char*,int ,int ,struct rpc_xprt*) ;
 int get_cred (int ) ;
 int kfree (struct rpc_clnt*) ;
 struct rpc_clnt* kzalloc (int,int ) ;
 int memcpy (struct rpc_timeout*,int *,int) ;
 int put_cred (int ) ;
 int rpc_alloc_clid (struct rpc_clnt*) ;
 int * rpc_alloc_iostats (struct rpc_clnt*) ;
 int rpc_client_register (struct rpc_clnt*,int ,int ) ;
 int rpc_clnt_set_nodename (struct rpc_clnt*,char const*) ;
 int rpc_clnt_set_transport (struct rpc_clnt*,struct rpc_xprt*,struct rpc_timeout const*) ;
 int rpc_free_clid (struct rpc_clnt*) ;
 int rpc_free_iostats (int *) ;
 int rpc_init_pipe_dir_head (int *) ;
 int rpc_init_rtt (int *,int ) ;
 int rpciod_down () ;
 int rpciod_up () ;
 int spin_lock_init (int *) ;
 TYPE_2__* utsname () ;
 int xprt_iter_init (int *,struct rpc_xprt_switch*) ;
 int xprt_put (struct rpc_xprt*) ;
 int xprt_switch_put (struct rpc_xprt_switch*) ;

__attribute__((used)) static struct rpc_clnt * rpc_new_client(const struct rpc_create_args *args,
  struct rpc_xprt_switch *xps,
  struct rpc_xprt *xprt,
  struct rpc_clnt *parent)
{
 const struct rpc_program *program = args->program;
 const struct rpc_version *version;
 struct rpc_clnt *clnt = ((void*)0);
 const struct rpc_timeout *timeout;
 const char *nodename = args->nodename;
 int err;


 dprintk("RPC:       creating %s client for %s (xprt %p)\n",
   program->name, args->servername, xprt);

 err = rpciod_up();
 if (err)
  goto out_no_rpciod;

 err = -EINVAL;
 if (args->version >= program->nrvers)
  goto out_err;
 version = program->version[args->version];
 if (version == ((void*)0))
  goto out_err;

 err = -ENOMEM;
 clnt = kzalloc(sizeof(*clnt), GFP_KERNEL);
 if (!clnt)
  goto out_err;
 clnt->cl_parent = parent ? : clnt;

 err = rpc_alloc_clid(clnt);
 if (err)
  goto out_no_clid;

 clnt->cl_cred = get_cred(args->cred);
 clnt->cl_procinfo = version->procs;
 clnt->cl_maxproc = version->nrprocs;
 clnt->cl_prog = args->prognumber ? : program->number;
 clnt->cl_vers = version->number;
 clnt->cl_stats = program->stats;
 clnt->cl_metrics = rpc_alloc_iostats(clnt);
 rpc_init_pipe_dir_head(&clnt->cl_pipedir_objects);
 err = -ENOMEM;
 if (clnt->cl_metrics == ((void*)0))
  goto out_no_stats;
 clnt->cl_program = program;
 INIT_LIST_HEAD(&clnt->cl_tasks);
 spin_lock_init(&clnt->cl_lock);

 timeout = xprt->timeout;
 if (args->timeout != ((void*)0)) {
  memcpy(&clnt->cl_timeout_default, args->timeout,
    sizeof(clnt->cl_timeout_default));
  timeout = &clnt->cl_timeout_default;
 }

 rpc_clnt_set_transport(clnt, xprt, timeout);
 xprt_iter_init(&clnt->cl_xpi, xps);
 xprt_switch_put(xps);

 clnt->cl_rtt = &clnt->cl_rtt_default;
 rpc_init_rtt(&clnt->cl_rtt_default, clnt->cl_timeout->to_initval);

 atomic_set(&clnt->cl_count, 1);

 if (nodename == ((void*)0))
  nodename = utsname()->nodename;

 rpc_clnt_set_nodename(clnt, nodename);

 err = rpc_client_register(clnt, args->authflavor, args->client_name);
 if (err)
  goto out_no_path;
 if (parent)
  atomic_inc(&parent->cl_count);
 return clnt;

out_no_path:
 rpc_free_iostats(clnt->cl_metrics);
out_no_stats:
 put_cred(clnt->cl_cred);
 rpc_free_clid(clnt);
out_no_clid:
 kfree(clnt);
out_err:
 rpciod_down();
out_no_rpciod:
 xprt_switch_put(xps);
 xprt_put(xprt);
 return ERR_PTR(err);
}
