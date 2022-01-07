
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigqueue {int flags; TYPE_1__* user; } ;
struct TYPE_2__ {int sigpending; } ;


 int SIGQUEUE_PREALLOC ;
 int atomic_dec (int *) ;
 int free_uid (TYPE_1__*) ;
 int kmem_cache_free (int ,struct sigqueue*) ;
 int sigqueue_cachep ;

__attribute__((used)) static void __sigqueue_free(struct sigqueue *q)
{
 if (q->flags & SIGQUEUE_PREALLOC)
  return;
 atomic_dec(&q->user->sigpending);
 free_uid(q->user);
 kmem_cache_free(sigqueue_cachep, q);
}
