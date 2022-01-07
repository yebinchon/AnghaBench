
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {scalar_t__ status; int req_list; } ;
struct p9_client {int lock; } ;


 int P9_DEBUG_TRANS ;
 scalar_t__ REQ_STATUS_FLSHD ;
 scalar_t__ REQ_STATUS_UNSENT ;
 int list_del (int *) ;
 int p9_debug (int ,char*,struct p9_client*,struct p9_req_t*) ;
 int p9_req_put (struct p9_req_t*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int p9_fd_cancel(struct p9_client *client, struct p9_req_t *req)
{
 int ret = 1;

 p9_debug(P9_DEBUG_TRANS, "client %p req %p\n", client, req);

 spin_lock(&client->lock);

 if (req->status == REQ_STATUS_UNSENT) {
  list_del(&req->req_list);
  req->status = REQ_STATUS_FLSHD;
  p9_req_put(req);
  ret = 0;
 }
 spin_unlock(&client->lock);

 return ret;
}
