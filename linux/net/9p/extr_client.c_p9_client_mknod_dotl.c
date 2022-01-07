
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int rc; } ;
struct p9_qid {int version; scalar_t__ path; int type; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;
typedef int kgid_t ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int P9_DEBUG_9P ;
 int P9_TMKNOD ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,char const*,int,int ,int ,int ) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,struct p9_qid*) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int p9_client_mknod_dotl(struct p9_fid *fid, const char *name, int mode,
   dev_t rdev, kgid_t gid, struct p9_qid *qid)
{
 int err;
 struct p9_client *clnt;
 struct p9_req_t *req;

 err = 0;
 clnt = fid->clnt;
 p9_debug(P9_DEBUG_9P, ">>> TMKNOD fid %d name %s mode %d major %d "
  "minor %d\n", fid->fid, name, mode, MAJOR(rdev), MINOR(rdev));
 req = p9_client_rpc(clnt, P9_TMKNOD, "dsdddg", fid->fid, name, mode,
  MAJOR(rdev), MINOR(rdev), gid);
 if (IS_ERR(req))
  return PTR_ERR(req);

 err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", qid);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  goto error;
 }
 p9_debug(P9_DEBUG_9P, "<<< RMKNOD qid %x.%llx.%x\n", qid->type,
    (unsigned long long)qid->path, qid->version);

error:
 p9_tag_remove(clnt, req);
 return err;

}
