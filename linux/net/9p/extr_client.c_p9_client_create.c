
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct p9_client {int msize; TYPE_1__* trans_mod; int * fcall_cache; int proto_version; int reqs; int fids; int lock; int name; int * trans; } ;
struct TYPE_5__ {char* nodename; } ;
struct TYPE_4__ {int (* create ) (struct p9_client*,char const*,char*) ;int maxsize; int (* close ) (struct p9_client*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 struct p9_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int P9_DEBUG_ERROR ;
 int P9_DEBUG_MUX ;
 scalar_t__ P9_HDRSZ ;
 int idr_init (int *) ;
 int kfree (struct p9_client*) ;
 struct p9_client* kmalloc (int,int ) ;
 int * kmem_cache_create_usercopy (char*,int,int ,int ,scalar_t__,scalar_t__,int *) ;
 int memcpy (int ,char*,scalar_t__) ;
 int p9_client_version (struct p9_client*) ;
 int p9_debug (int ,char*,...) ;
 int parse_opts (char*,struct p9_client*) ;
 int spin_lock_init (int *) ;
 scalar_t__ strlen (char*) ;
 int stub1 (struct p9_client*,char const*,char*) ;
 int stub2 (struct p9_client*) ;
 TYPE_3__* utsname () ;
 TYPE_1__* v9fs_get_default_trans () ;
 int v9fs_put_trans (TYPE_1__*) ;

struct p9_client *p9_client_create(const char *dev_name, char *options)
{
 int err;
 struct p9_client *clnt;
 char *client_id;

 err = 0;
 clnt = kmalloc(sizeof(struct p9_client), GFP_KERNEL);
 if (!clnt)
  return ERR_PTR(-ENOMEM);

 clnt->trans_mod = ((void*)0);
 clnt->trans = ((void*)0);
 clnt->fcall_cache = ((void*)0);

 client_id = utsname()->nodename;
 memcpy(clnt->name, client_id, strlen(client_id) + 1);

 spin_lock_init(&clnt->lock);
 idr_init(&clnt->fids);
 idr_init(&clnt->reqs);

 err = parse_opts(options, clnt);
 if (err < 0)
  goto free_client;

 if (!clnt->trans_mod)
  clnt->trans_mod = v9fs_get_default_trans();

 if (clnt->trans_mod == ((void*)0)) {
  err = -EPROTONOSUPPORT;
  p9_debug(P9_DEBUG_ERROR,
    "No transport defined or default transport\n");
  goto free_client;
 }

 p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
   clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);

 err = clnt->trans_mod->create(clnt, dev_name, options);
 if (err)
  goto put_trans;

 if (clnt->msize > clnt->trans_mod->maxsize)
  clnt->msize = clnt->trans_mod->maxsize;

 if (clnt->msize < 4096) {
  p9_debug(P9_DEBUG_ERROR,
    "Please specify a msize of at least 4k\n");
  err = -EINVAL;
  goto close_trans;
 }

 err = p9_client_version(clnt);
 if (err)
  goto close_trans;




 clnt->fcall_cache =
  kmem_cache_create_usercopy("9p-fcall-cache", clnt->msize,
        0, 0, P9_HDRSZ + 4,
        clnt->msize - (P9_HDRSZ + 4),
        ((void*)0));

 return clnt;

close_trans:
 clnt->trans_mod->close(clnt);
put_trans:
 v9fs_put_trans(clnt->trans_mod);
free_client:
 kfree(clnt);
 return ERR_PTR(err);
}
