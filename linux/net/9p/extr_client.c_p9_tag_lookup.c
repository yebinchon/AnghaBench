
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ tag; } ;
struct p9_req_t {TYPE_1__ tc; } ;
struct p9_client {int reqs; } ;


 struct p9_req_t* idr_find (int *,scalar_t__) ;
 int p9_req_put (struct p9_req_t*) ;
 int p9_req_try_get (struct p9_req_t*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
{
 struct p9_req_t *req;

 rcu_read_lock();
again:
 req = idr_find(&c->reqs, tag);
 if (req) {





  if (!p9_req_try_get(req))
   goto again;
  if (req->tc.tag != tag) {
   p9_req_put(req);
   goto again;
  }
 }
 rcu_read_unlock();

 return req;
}
