
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; scalar_t__ path; int type; } ;
struct p9_wstat {int size; int n_muid; int n_gid; int n_uid; int extension; int muid; int gid; int uid; int name; scalar_t__ length; int mtime; int atime; int mode; TYPE_1__ qid; int dev; int type; } ;
struct p9_req_t {int dummy; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TWSTAT ;
 int PTR_ERR (struct p9_req_t*) ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,int ,struct p9_wstat*) ;
 int p9_client_statsize (struct p9_wstat*,int ) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;

int p9_client_wstat(struct p9_fid *fid, struct p9_wstat *wst)
{
 int err;
 struct p9_req_t *req;
 struct p9_client *clnt;

 err = 0;
 clnt = fid->clnt;
 wst->size = p9_client_statsize(wst, clnt->proto_version);
 p9_debug(P9_DEBUG_9P, ">>> TWSTAT fid %d\n", fid->fid);
 p9_debug(P9_DEBUG_9P,
  "     sz=%x type=%x dev=%x qid=%x.%llx.%x\n"
  "     mode=%8.8x atime=%8.8x mtime=%8.8x length=%llx\n"
  "     name=%s uid=%s gid=%s muid=%s extension=(%s)\n"
  "     uid=%d gid=%d n_muid=%d\n",
  wst->size, wst->type, wst->dev, wst->qid.type,
  (unsigned long long)wst->qid.path, wst->qid.version, wst->mode,
  wst->atime, wst->mtime, (unsigned long long)wst->length,
  wst->name, wst->uid, wst->gid, wst->muid, wst->extension,
  from_kuid(&init_user_ns, wst->n_uid),
  from_kgid(&init_user_ns, wst->n_gid),
  from_kuid(&init_user_ns, wst->n_muid));

 req = p9_client_rpc(clnt, P9_TWSTAT, "dwS", fid->fid, wst->size+2, wst);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 p9_debug(P9_DEBUG_9P, "<<< RWSTAT fid %d\n", fid->fid);

 p9_tag_remove(clnt, req);
error:
 return err;
}
