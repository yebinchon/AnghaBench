
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int dummy; } ;
struct p9_client {int dummy; } ;


 int p9_req_put (struct p9_req_t*) ;

__attribute__((used)) static int p9_virtio_cancelled(struct p9_client *client, struct p9_req_t *req)
{
 p9_req_put(req);
 return 0;
}
