
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int tag; } ;
struct p9_req_t {TYPE_1__ tc; } ;
struct p9_client {int lock; int reqs; } ;


 int P9_DEBUG_MUX ;
 int idr_remove (int *,int ) ;
 int p9_debug (int ,char*,struct p9_client*,struct p9_req_t*,int ) ;
 int p9_req_put (struct p9_req_t*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
{
 unsigned long flags;
 u16 tag = r->tc.tag;

 p9_debug(P9_DEBUG_MUX, "clnt %p req %p tag: %d\n", c, r, tag);
 spin_lock_irqsave(&c->lock, flags);
 idr_remove(&c->reqs, tag);
 spin_unlock_irqrestore(&c->lock, flags);
 return p9_req_put(r);
}
