
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
 int P9_TMKDIR ;
 int PTR_ERR (struct p9_req_t*) ;
 int from_kgid (int *,int ) ;
 int init_user_ns ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char const*,int,int ) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,struct p9_qid*) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
    kgid_t gid, struct p9_qid *qid)
{
 int err;
 struct p9_client *clnt;
 struct p9_req_t *req;

 err = 0;
 clnt = fid->clnt;
 p9_debug(P9_DEBUG_9P, ">>> TMKDIR fid %d name %s mode %d gid %d\n",
   fid->fid, name, mode, from_kgid(&init_user_ns, gid));
 req = p9_client_rpc(clnt, P9_TMKDIR, "dsdg", fid->fid, name, mode,
  gid);
 if (IS_ERR(req))
  return PTR_ERR(req);

 err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", qid);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  goto error;
 }
 p9_debug(P9_DEBUG_9P, "<<< RMKDIR qid %x.%llx.%x\n", qid->type,
    (unsigned long long)qid->path, qid->version);

error:
 p9_tag_remove(clnt, req);
 return err;

}
