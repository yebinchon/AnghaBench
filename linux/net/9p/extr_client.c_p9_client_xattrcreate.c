
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct p9_req_t {int dummy; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TXATTRCREATE ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char const*,scalar_t__,int) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;

int p9_client_xattrcreate(struct p9_fid *fid, const char *name,
   u64 attr_size, int flags)
{
 int err;
 struct p9_req_t *req;
 struct p9_client *clnt;

 p9_debug(P9_DEBUG_9P,
  ">>> TXATTRCREATE fid %d name  %s size %lld flag %d\n",
  fid->fid, name, (long long)attr_size, flags);
 err = 0;
 clnt = fid->clnt;
 req = p9_client_rpc(clnt, P9_TXATTRCREATE, "dsqd",
   fid->fid, name, attr_size, flags);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }
 p9_debug(P9_DEBUG_9P, "<<< RXATTRCREATE fid %d\n", fid->fid);
 p9_tag_remove(clnt, req);
error:
 return err;
}
