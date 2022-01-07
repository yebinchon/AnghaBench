
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tag; } ;
struct p9_req_t {int status; TYPE_1__ tc; int wq; } ;
struct p9_client {int dummy; } ;


 int P9_DEBUG_MUX ;
 int p9_debug (int ,char*,int ) ;
 int p9_req_put (struct p9_req_t*) ;
 int smp_wmb () ;
 int wake_up (int *) ;

void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
{
 p9_debug(P9_DEBUG_MUX, " tag %d\n", req->tc.tag);





 smp_wmb();
 req->status = status;

 wake_up(&req->wq);
 p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
 p9_req_put(req);
}
