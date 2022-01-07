
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int dummy; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TLINK ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,int ,char const*) ;
 int p9_debug (int ,char*,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;

int p9_client_link(struct p9_fid *dfid, struct p9_fid *oldfid, const char *newname)
{
 struct p9_client *clnt;
 struct p9_req_t *req;

 p9_debug(P9_DEBUG_9P, ">>> TLINK dfid %d oldfid %d newname %s\n",
   dfid->fid, oldfid->fid, newname);
 clnt = dfid->clnt;
 req = p9_client_rpc(clnt, P9_TLINK, "dds", dfid->fid, oldfid->fid,
   newname);
 if (IS_ERR(req))
  return PTR_ERR(req);

 p9_debug(P9_DEBUG_9P, "<<< RLINK\n");
 p9_tag_remove(clnt, req);
 return 0;
}
