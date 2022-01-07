
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tag; } ;
struct TYPE_5__ {int refcount; } ;
struct p9_req_t {TYPE_2__ rc; TYPE_2__ tc; TYPE_1__ refcount; int req_list; int wq; int status; scalar_t__ t_err; } ;
struct p9_client {int lock; int reqs; int msize; } ;
typedef scalar_t__ int8_t ;


 int ENOMEM ;
 struct p9_req_t* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ P9_NOTAG ;
 scalar_t__ P9_TVERSION ;
 int REQ_STATUS_ALLOC ;
 int idr_alloc (int *,struct p9_req_t*,scalar_t__,scalar_t__,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int init_waitqueue_head (int *) ;
 struct p9_req_t* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct p9_req_t*) ;
 int min (int ,unsigned int) ;
 int p9_fcall_fini (TYPE_2__*) ;
 scalar_t__ p9_fcall_init (struct p9_client*,TYPE_2__*,int) ;
 int p9_req_cache ;
 int p9pdu_reset (TYPE_2__*) ;
 int refcount_set (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct p9_req_t *
p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
{
 struct p9_req_t *req = kmem_cache_alloc(p9_req_cache, GFP_NOFS);
 int alloc_msize = min(c->msize, max_size);
 int tag;

 if (!req)
  return ERR_PTR(-ENOMEM);

 if (p9_fcall_init(c, &req->tc, alloc_msize))
  goto free_req;
 if (p9_fcall_init(c, &req->rc, alloc_msize))
  goto free;

 p9pdu_reset(&req->tc);
 p9pdu_reset(&req->rc);
 req->t_err = 0;
 req->status = REQ_STATUS_ALLOC;
 init_waitqueue_head(&req->wq);
 INIT_LIST_HEAD(&req->req_list);

 idr_preload(GFP_NOFS);
 spin_lock_irq(&c->lock);
 if (type == P9_TVERSION)
  tag = idr_alloc(&c->reqs, req, P9_NOTAG, P9_NOTAG + 1,
    GFP_NOWAIT);
 else
  tag = idr_alloc(&c->reqs, req, 0, P9_NOTAG, GFP_NOWAIT);
 req->tc.tag = tag;
 spin_unlock_irq(&c->lock);
 idr_preload_end();
 if (tag < 0)
  goto free;
 refcount_set(&req->refcount.refcount, 2);

 return req;

free:
 p9_fcall_fini(&req->tc);
 p9_fcall_fini(&req->rc);
free_req:
 kmem_cache_free(p9_req_cache, req);
 return ERR_PTR(-ENOMEM);
}
