
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_req_t {int refcount; } ;


 int kref_put (int *,int ) ;
 int p9_req_free ;

int p9_req_put(struct p9_req_t *r)
{
 return kref_put(&r->refcount, p9_req_free);
}
