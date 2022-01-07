
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int rc; } ;
struct p9_client {int msize; int proto_version; } ;


 int EINVAL ;
 int EREMOTEIO ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_DEBUG_ERROR ;
 int P9_TVERSION ;
 int PTR_ERR (struct p9_req_t*) ;
 int kfree (char*) ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int,char*) ;
 int p9_debug (int ,char*,...) ;



 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_readf (int *,int,char*,int*,char**) ;
 int strncmp (char*,char*,int) ;
 int trace_9p_protocol_dump (struct p9_client*,int *) ;

__attribute__((used)) static int p9_client_version(struct p9_client *c)
{
 int err = 0;
 struct p9_req_t *req;
 char *version = ((void*)0);
 int msize;

 p9_debug(P9_DEBUG_9P, ">>> TVERSION msize %d protocol %d\n",
   c->msize, c->proto_version);

 switch (c->proto_version) {
 case 130:
  req = p9_client_rpc(c, P9_TVERSION, "ds",
     c->msize, "9P2000.L");
  break;
 case 129:
  req = p9_client_rpc(c, P9_TVERSION, "ds",
     c->msize, "9P2000.u");
  break;
 case 128:
  req = p9_client_rpc(c, P9_TVERSION, "ds",
     c->msize, "9P2000");
  break;
 default:
  return -EINVAL;
 }

 if (IS_ERR(req))
  return PTR_ERR(req);

 err = p9pdu_readf(&req->rc, c->proto_version, "ds", &msize, &version);
 if (err) {
  p9_debug(P9_DEBUG_9P, "version error %d\n", err);
  trace_9p_protocol_dump(c, &req->rc);
  goto error;
 }

 p9_debug(P9_DEBUG_9P, "<<< RVERSION msize %d %s\n", msize, version);
 if (!strncmp(version, "9P2000.L", 8))
  c->proto_version = 130;
 else if (!strncmp(version, "9P2000.u", 8))
  c->proto_version = 129;
 else if (!strncmp(version, "9P2000", 6))
  c->proto_version = 128;
 else {
  p9_debug(P9_DEBUG_ERROR,
    "server returned an unknown version: %s\n", version);
  err = -EREMOTEIO;
  goto error;
 }

 if (msize < 4096) {
  p9_debug(P9_DEBUG_ERROR,
    "server returned a msize < 4096: %d\n", msize);
  err = -EREMOTEIO;
  goto error;
 }
 if (msize < c->msize)
  c->msize = msize;

error:
 kfree(version);
 p9_tag_remove(c, req);

 return err;
}
