
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct p9_req_t {int rc; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;


 int ENOMEM ;
 struct p9_fid* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TXATTRWALK ;
 int PTR_ERR (struct p9_req_t*) ;
 int p9_client_clunk (struct p9_fid*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,int ,char const*) ;
 int p9_debug (int ,char*,int ,int ,...) ;
 struct p9_fid* p9_fid_create (struct p9_client*) ;
 int p9_fid_destroy (struct p9_fid*) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,int *) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

struct p9_fid *p9_client_xattrwalk(struct p9_fid *file_fid,
    const char *attr_name, u64 *attr_size)
{
 int err;
 struct p9_req_t *req;
 struct p9_client *clnt;
 struct p9_fid *attr_fid;

 err = 0;
 clnt = file_fid->clnt;
 attr_fid = p9_fid_create(clnt);
 if (!attr_fid) {
  err = -ENOMEM;
  goto error;
 }
 p9_debug(P9_DEBUG_9P,
  ">>> TXATTRWALK file_fid %d, attr_fid %d name %s\n",
  file_fid->fid, attr_fid->fid, attr_name);

 req = p9_client_rpc(clnt, P9_TXATTRWALK, "dds",
   file_fid->fid, attr_fid->fid, attr_name);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }
 err = p9pdu_readf(&req->rc, clnt->proto_version, "q", attr_size);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  p9_tag_remove(clnt, req);
  goto clunk_fid;
 }
 p9_tag_remove(clnt, req);
 p9_debug(P9_DEBUG_9P, "<<<  RXATTRWALK fid %d size %llu\n",
  attr_fid->fid, *attr_size);
 return attr_fid;
clunk_fid:
 p9_client_clunk(attr_fid);
 attr_fid = ((void*)0);
error:
 if (attr_fid && (attr_fid != file_fid))
  p9_fid_destroy(attr_fid);

 return ERR_PTR(err);
}
