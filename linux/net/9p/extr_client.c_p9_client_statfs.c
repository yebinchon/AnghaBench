
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_rstatfs {scalar_t__ namelen; int fsid; int ffree; int files; int bavail; int bfree; int blocks; scalar_t__ bsize; scalar_t__ type; } ;
struct p9_req_t {int rc; } ;
struct p9_fid {int fid; struct p9_client* clnt; } ;
struct p9_client {int proto_version; } ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TSTATFS ;
 int PTR_ERR (struct p9_req_t*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ) ;
 int p9_debug (int ,char*,int ,...) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int ,char*,scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,scalar_t__*) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb)
{
 int err;
 struct p9_req_t *req;
 struct p9_client *clnt;

 err = 0;
 clnt = fid->clnt;

 p9_debug(P9_DEBUG_9P, ">>> TSTATFS fid %d\n", fid->fid);

 req = p9_client_rpc(clnt, P9_TSTATFS, "d", fid->fid);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto error;
 }

 err = p9pdu_readf(&req->rc, clnt->proto_version, "ddqqqqqqd", &sb->type,
     &sb->bsize, &sb->blocks, &sb->bfree, &sb->bavail,
     &sb->files, &sb->ffree, &sb->fsid, &sb->namelen);
 if (err) {
  trace_9p_protocol_dump(clnt, &req->rc);
  p9_tag_remove(clnt, req);
  goto error;
 }

 p9_debug(P9_DEBUG_9P, "<<< RSTATFS fid %d type 0x%lx bsize %ld "
  "blocks %llu bfree %llu bavail %llu files %llu ffree %llu "
  "fsid %llu namelen %ld\n",
  fid->fid, (long unsigned int)sb->type, (long int)sb->bsize,
  sb->blocks, sb->bfree, sb->bavail, sb->files, sb->ffree,
  sb->fsid, (long int)sb->namelen);

 p9_tag_remove(clnt, req);
error:
 return err;
}
