
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int dummy; } ;
struct p9_iattr_dotl {int mtime_nsec; int mtime_sec; int atime_nsec; int atime_sec; int size; int gid; int uid; int mode; int valid; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TSETATTR ;
 int PTR_ERR (struct p9_req_t*) ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ,struct p9_iattr_dotl*) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;

int p9_client_setattr(struct p9_fid *fid, struct p9_iattr_dotl *p9attr)
{
 int err;
 struct p9_req_t *req;
 struct p9_client *clnt;

 err = 0;
 clnt = fid->clnt;
 p9_debug(P9_DEBUG_9P, ">>> TSETATTR fid %d\n", fid->fid);
 p9_debug(P9_DEBUG_9P,
  "    valid=%x mode=%x uid=%d gid=%d size=%lld\n"
  "    atime_sec=%lld atime_nsec=%lld\n"
  "    mtime_sec=%lld mtime_nsec=%lld\n",
  p9attr->valid, p9attr->mode,
  from_kuid(&init_user_ns, p9attr->uid),
  from_kgid(&init_user_ns, p9attr->gid),
  p9attr->size, p9attr->atime_sec, p9attr->atime_nsec,
  p9attr->mtime_sec, p9attr->mtime_nsec);

 req = p9_client_rpc(clnt, P9_TSETATTR, "dI", fid->fid, p9attr);

 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }
 p9_debug(P9_DEBUG_9P, "<<< RSETATTR fid %d\n", fid->fid);
 p9_tag_remove(clnt, req);
error:
 return err;
}
