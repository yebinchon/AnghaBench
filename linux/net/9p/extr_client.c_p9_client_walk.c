
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct p9_req_t {int rc; } ;
struct p9_qid {size_t type; unsigned char const* const version; scalar_t__ path; } ;
struct p9_fid {size_t fid; int qid; int uid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;


 int ENOENT ;
 int ENOMEM ;
 struct p9_fid* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TWALK ;
 int PTR_ERR (struct p9_req_t*) ;
 int kfree (struct p9_qid*) ;
 int memmove (int *,struct p9_qid*,int) ;
 int p9_client_clunk (struct p9_fid*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,size_t,size_t,size_t,unsigned char const* const*) ;
 int p9_debug (int ,char*,size_t,...) ;
 struct p9_fid* p9_fid_create (struct p9_client*) ;
 int p9_fid_destroy (struct p9_fid*) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,size_t*,struct p9_qid**) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
  const unsigned char * const *wnames, int clone)
{
 int err;
 struct p9_client *clnt;
 struct p9_fid *fid;
 struct p9_qid *wqids;
 struct p9_req_t *req;
 uint16_t nwqids, count;

 err = 0;
 wqids = ((void*)0);
 clnt = oldfid->clnt;
 if (clone) {
  fid = p9_fid_create(clnt);
  if (!fid) {
   err = -ENOMEM;
   goto error;
  }

  fid->uid = oldfid->uid;
 } else
  fid = oldfid;


 p9_debug(P9_DEBUG_9P, ">>> TWALK fids %d,%d nwname %ud wname[0] %s\n",
   oldfid->fid, fid->fid, nwname, wnames ? wnames[0] : ((void*)0));

 req = p9_client_rpc(clnt, P9_TWALK, "ddT", oldfid->fid, fid->fid,
        nwname, wnames);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 err = p9pdu_readf(&req->rc, clnt->proto_version, "R", &nwqids, &wqids);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  p9_tag_remove(clnt, req);
  goto clunk_fid;
 }
 p9_tag_remove(clnt, req);

 p9_debug(P9_DEBUG_9P, "<<< RWALK nwqid %d:\n", nwqids);

 if (nwqids != nwname) {
  err = -ENOENT;
  goto clunk_fid;
 }

 for (count = 0; count < nwqids; count++)
  p9_debug(P9_DEBUG_9P, "<<<     [%d] %x.%llx.%x\n",
   count, wqids[count].type,
   (unsigned long long)wqids[count].path,
   wqids[count].version);

 if (nwname)
  memmove(&fid->qid, &wqids[nwqids - 1], sizeof(struct p9_qid));
 else
  fid->qid = oldfid->qid;

 kfree(wqids);
 return fid;

clunk_fid:
 kfree(wqids);
 p9_client_clunk(fid);
 fid = ((void*)0);

error:
 if (fid && (fid != oldfid))
  p9_fid_destroy(fid);

 return ERR_PTR(err);
}
