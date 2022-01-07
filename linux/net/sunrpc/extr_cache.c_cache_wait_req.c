
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_deferred_req {int hash; int revisit; } ;
struct thread_deferred_req {int completion; struct cache_deferred_req handle; } ;
struct cache_req {int thread_wait; } ;
struct cache_head {int flags; } ;


 int CACHE_PENDING ;
 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int __unhash_deferred_req (struct cache_deferred_req*) ;
 int cache_defer_lock ;
 int cache_restart_thread ;
 int hlist_unhashed (int *) ;
 int setup_deferral (struct cache_deferred_req*,struct cache_head*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wait_for_completion (int *) ;
 scalar_t__ wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static void cache_wait_req(struct cache_req *req, struct cache_head *item)
{
 struct thread_deferred_req sleeper;
 struct cache_deferred_req *dreq = &sleeper.handle;

 sleeper.completion = COMPLETION_INITIALIZER_ONSTACK(sleeper.completion);
 dreq->revisit = cache_restart_thread;

 setup_deferral(dreq, item, 0);

 if (!test_bit(CACHE_PENDING, &item->flags) ||
     wait_for_completion_interruptible_timeout(
      &sleeper.completion, req->thread_wait) <= 0) {



  spin_lock(&cache_defer_lock);
  if (!hlist_unhashed(&sleeper.handle.hash)) {
   __unhash_deferred_req(&sleeper.handle);
   spin_unlock(&cache_defer_lock);
  } else {





   spin_unlock(&cache_defer_lock);
   wait_for_completion(&sleeper.completion);
  }
 }
}
