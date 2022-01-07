
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int dummy; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TRENAME ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,int ,char const*) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;

int p9_client_rename(struct p9_fid *fid,
       struct p9_fid *newdirfid, const char *name)
{
 int err;
 struct p9_req_t *req;
 struct p9_client *clnt;

 err = 0;
 clnt = fid->clnt;

 p9_debug(P9_DEBUG_9P, ">>> TRENAME fid %d newdirfid %d name %s\n",
   fid->fid, newdirfid->fid, name);

 req = p9_client_rpc(clnt, P9_TRENAME, "dds", fid->fid,
   newdirfid->fid, name);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 p9_debug(P9_DEBUG_9P, "<<< RRENAME fid %d\n", fid->fid);

 p9_tag_remove(clnt, req);
error:
 return err;
}
