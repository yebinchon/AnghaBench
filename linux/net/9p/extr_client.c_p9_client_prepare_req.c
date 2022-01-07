
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {int tag; } ;
struct p9_req_t {TYPE_1__ tc; } ;
struct p9_client {scalar_t__ status; int proto_version; } ;
typedef int int8_t ;


 scalar_t__ BeginDisconnect ;
 scalar_t__ Disconnected ;
 int EIO ;
 struct p9_req_t* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_MUX ;
 int P9_TCLUNK ;
 int p9_debug (int ,char*,struct p9_client*,int ) ;
 int p9_req_put (struct p9_req_t*) ;
 struct p9_req_t* p9_tag_alloc (struct p9_client*,int ,int) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int p9pdu_finalize (struct p9_client*,TYPE_1__*) ;
 int p9pdu_prepare (TYPE_1__*,int ,int ) ;
 int p9pdu_vwritef (TYPE_1__*,int ,char const*,int ) ;
 int trace_9p_client_req (struct p9_client*,int ,int ) ;

__attribute__((used)) static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
           int8_t type, int req_size,
           const char *fmt, va_list ap)
{
 int err;
 struct p9_req_t *req;

 p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);


 if (c->status == Disconnected)
  return ERR_PTR(-EIO);


 if ((c->status == BeginDisconnect) && (type != P9_TCLUNK))
  return ERR_PTR(-EIO);

 req = p9_tag_alloc(c, type, req_size);
 if (IS_ERR(req))
  return req;


 p9pdu_prepare(&req->tc, req->tc.tag, type);
 err = p9pdu_vwritef(&req->tc, c->proto_version, fmt, ap);
 if (err)
  goto reterr;
 p9pdu_finalize(c, &req->tc);
 trace_9p_client_req(c, type, req->tc.tag);
 return req;
reterr:
 p9_tag_remove(c, req);

 p9_req_put(req);
 return ERR_PTR(err);
}
