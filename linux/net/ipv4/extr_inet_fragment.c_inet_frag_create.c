
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {int rhash_params; } ;
struct inet_frag_queue {int flags; int node; int key; int timer; } ;
struct fqdir {int rhashtable; scalar_t__ timeout; struct inet_frags* f; } ;


 int ENOMEM ;
 struct inet_frag_queue* ERR_PTR (int ) ;
 int INET_FRAG_COMPLETE ;
 struct inet_frag_queue* inet_frag_alloc (struct fqdir*,struct inet_frags*,void*) ;
 int inet_frag_destroy (struct inet_frag_queue*) ;
 int inet_frag_kill (struct inet_frag_queue*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct inet_frag_queue* rhashtable_lookup_get_insert_key (int *,int *,int *,int ) ;

__attribute__((used)) static struct inet_frag_queue *inet_frag_create(struct fqdir *fqdir,
      void *arg,
      struct inet_frag_queue **prev)
{
 struct inet_frags *f = fqdir->f;
 struct inet_frag_queue *q;

 q = inet_frag_alloc(fqdir, f, arg);
 if (!q) {
  *prev = ERR_PTR(-ENOMEM);
  return ((void*)0);
 }
 mod_timer(&q->timer, jiffies + fqdir->timeout);

 *prev = rhashtable_lookup_get_insert_key(&fqdir->rhashtable, &q->key,
       &q->node, f->rhash_params);
 if (*prev) {
  q->flags |= INET_FRAG_COMPLETE;
  inet_frag_kill(q);
  inet_frag_destroy(q);
  return ((void*)0);
 }
 return q;
}
