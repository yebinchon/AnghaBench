
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int rc; } ;
struct p9_qid {int version; scalar_t__ path; int type; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;
typedef int kgid_t ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TSYMLINK ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char const*,char const*,int ) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,struct p9_qid*) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int p9_client_symlink(struct p9_fid *dfid, const char *name,
  const char *symtgt, kgid_t gid, struct p9_qid *qid)
{
 int err = 0;
 struct p9_client *clnt;
 struct p9_req_t *req;

 p9_debug(P9_DEBUG_9P, ">>> TSYMLINK dfid %d name %s  symtgt %s\n",
   dfid->fid, name, symtgt);
 clnt = dfid->clnt;

 req = p9_client_rpc(clnt, P9_TSYMLINK, "dssg", dfid->fid, name, symtgt,
   gid);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", qid);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  goto free_and_error;
 }

 p9_debug(P9_DEBUG_9P, "<<< RSYMLINK qid %x.%llx.%x\n",
   qid->type, (unsigned long long)qid->path, qid->version);

free_and_error:
 p9_tag_remove(clnt, req);
error:
 return err;
}
