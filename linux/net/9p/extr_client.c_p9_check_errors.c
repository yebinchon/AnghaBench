
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
struct p9_req_t {TYPE_1__ rc; } ;
struct p9_client {scalar_t__ msize; int proto_version; } ;
typedef scalar_t__ int8_t ;


 int EIO ;
 int P9_DEBUG_9P ;
 int P9_DEBUG_ERROR ;
 scalar_t__ P9_RERROR ;
 scalar_t__ P9_RLERROR ;
 int kfree (char*) ;
 int p9_debug (int ,char*,int,...) ;
 int p9_errstr2errno (char*,int ) ;
 int p9_is_proto_dotl (struct p9_client*) ;
 scalar_t__ p9_is_proto_dotu (struct p9_client*) ;
 int p9_parse_header (TYPE_1__*,int *,scalar_t__*,int *,int ) ;
 int p9pdu_readf (TYPE_1__*,int ,char*,...) ;
 int strlen (char*) ;
 int trace_9p_protocol_dump (struct p9_client*,TYPE_1__*) ;

__attribute__((used)) static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
{
 int8_t type;
 int err;
 int ecode;

 err = p9_parse_header(&req->rc, ((void*)0), &type, ((void*)0), 0);
 if (req->rc.size >= c->msize) {
  p9_debug(P9_DEBUG_ERROR,
    "requested packet size too big: %d\n",
    req->rc.size);
  return -EIO;
 }




 trace_9p_protocol_dump(c, &req->rc);
 if (err) {
  p9_debug(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
  return err;
 }
 if (type != P9_RERROR && type != P9_RLERROR)
  return 0;

 if (!p9_is_proto_dotl(c)) {
  char *ename;
  err = p9pdu_readf(&req->rc, c->proto_version, "s?d",
      &ename, &ecode);
  if (err)
   goto out_err;

  if (p9_is_proto_dotu(c) && ecode < 512)
   err = -ecode;

  if (!err) {
   err = p9_errstr2errno(ename, strlen(ename));

   p9_debug(P9_DEBUG_9P, "<<< RERROR (%d) %s\n",
     -ecode, ename);
  }
  kfree(ename);
 } else {
  err = p9pdu_readf(&req->rc, c->proto_version, "d", &ecode);
  err = -ecode;

  p9_debug(P9_DEBUG_9P, "<<< RLERROR (%d)\n", -ecode);
 }

 return err;

out_err:
 p9_debug(P9_DEBUG_ERROR, "couldn't parse error%d\n", err);

 return err;
}
