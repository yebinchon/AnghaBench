
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_req_t {scalar_t__ status; int tc; } ;
struct p9_client {TYPE_1__* trans_mod; } ;
typedef int int16_t ;
struct TYPE_2__ {int (* cancelled ) (struct p9_client*,struct p9_req_t*) ;} ;


 scalar_t__ IS_ERR (struct p9_req_t*) ;
 int P9_DEBUG_9P ;
 int P9_TFLUSH ;
 int PTR_ERR (struct p9_req_t*) ;
 scalar_t__ REQ_STATUS_SENT ;
 struct p9_req_t* p9_client_rpc (struct p9_client*,int ,char*,int ) ;
 int p9_debug (int ,char*,int ) ;
 int p9_parse_header (int *,int *,int *,int *,int) ;
 int p9_tag_remove (struct p9_client*,struct p9_req_t*) ;
 int stub1 (struct p9_client*,struct p9_req_t*) ;

__attribute__((used)) static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
{
 struct p9_req_t *req;
 int16_t oldtag;
 int err;

 err = p9_parse_header(&oldreq->tc, ((void*)0), ((void*)0), &oldtag, 1);
 if (err)
  return err;

 p9_debug(P9_DEBUG_9P, ">>> TFLUSH tag %d\n", oldtag);

 req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
 if (IS_ERR(req))
  return PTR_ERR(req);





 if (oldreq->status == REQ_STATUS_SENT) {
  if (c->trans_mod->cancelled)
   c->trans_mod->cancelled(c, oldreq);
 }

 p9_tag_remove(c, req);
 return 0;
}
