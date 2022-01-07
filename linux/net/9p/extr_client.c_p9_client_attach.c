
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int rc; } ;
struct p9_qid {int version; scalar_t__ path; int type; } ;
struct p9_fid {int fid; int qid; int uid; } ;
struct p9_client {int proto_version; } ;
typedef int kuid_t ;


 int ENOMEM ;
 struct p9_fid* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_NOFID ;
 int P9_TATTACH ;
 int PTR_ERR (struct p9_req_t*) ;
 int memmove (int *,struct p9_qid*,int) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int,int,char const*,char const*,int ) ;
 int p9_debug (int ,char*,int,...) ;
 struct p9_fid* p9_fid_create (struct p9_client*) ;
 int p9_fid_destroy (struct p9_fid*) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,struct p9_qid*) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
 const char *uname, kuid_t n_uname, const char *aname)
{
 int err = 0;
 struct p9_req_t *req;
 struct p9_fid *fid;
 struct p9_qid qid;


 p9_debug(P9_DEBUG_9P, ">>> TATTACH afid %d uname %s aname %s\n",
   afid ? afid->fid : -1, uname, aname);
 fid = p9_fid_create(clnt);
 if (!fid) {
  err = -ENOMEM;
  goto error;
 }
 fid->uid = n_uname;

 req = p9_client_rpc(clnt, P9_TATTACH, "ddss?u", fid->fid,
   afid ? afid->fid : P9_NOFID, uname, aname, n_uname);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", &qid);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  p9_tag_remove(clnt, req);
  goto error;
 }

 p9_debug(P9_DEBUG_9P, "<<< RATTACH qid %x.%llx.%x\n",
   qid.type, (unsigned long long)qid.path, qid.version);

 memmove(&fid->qid, &qid, sizeof(struct p9_qid));

 p9_tag_remove(clnt, req);
 return fid;

error:
 if (fid)
  p9_fid_destroy(fid);
 return ERR_PTR(err);
}
