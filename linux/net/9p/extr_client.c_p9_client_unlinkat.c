
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int dummy; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TUNLINKAT ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char const*,int) ;
 int p9_debug (int ,char*,int ,char const*,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;

int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags)
{
 int err = 0;
 struct p9_req_t *req;
 struct p9_client *clnt;

 p9_debug(P9_DEBUG_9P, ">>> TUNLINKAT fid %d %s %d\n",
     dfid->fid, name, flags);

 clnt = dfid->clnt;
 req = p9_client_rpc(clnt, P9_TUNLINKAT, "dsd", dfid->fid, name, flags);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }
 p9_debug(P9_DEBUG_9P, "<<< RUNLINKAT fid %d %s\n", dfid->fid, name);

 p9_tag_remove(clnt, req);
error:
 return err;
}
