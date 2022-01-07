
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int req_list; } ;
struct p9_client {int lock; } ;


 int P9_DEBUG_TRANS ;
 int list_del (int *) ;
 int p9_debug (int ,char*,struct p9_client*,struct p9_req_t*) ;
 int p9_req_put (struct p9_req_t*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
{
 p9_debug(P9_DEBUG_TRANS, "client %p req %p\n", client, req);




 spin_lock(&client->lock);
 list_del(&req->req_list);
 spin_unlock(&client->lock);
 p9_req_put(req);

 return 0;
}
