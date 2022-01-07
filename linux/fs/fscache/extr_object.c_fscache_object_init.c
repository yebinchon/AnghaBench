
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_transition {int events; } ;
struct fscache_object {int flags; int oob_event_mask; int event_mask; TYPE_1__* state; struct fscache_transition* oob_table; int objlist_link; int * parent; struct fscache_cookie* cookie; struct fscache_cache* cache; scalar_t__ store_limit_l; scalar_t__ store_limit; scalar_t__ events; scalar_t__ n_exclusive; scalar_t__ n_in_progress; scalar_t__ n_ops; scalar_t__ n_children; int pending_ops; int dep_link; int dependents; int work; int cookie_link; int cache_link; int lock; } ;
struct fscache_cookie {int dummy; } ;
struct fscache_cache {int object_count; } ;
struct TYPE_2__ {struct fscache_transition* transitions; } ;


 int FSCACHE_OBJECT_IS_LIVE ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RB_CLEAR_NODE (int *) ;
 TYPE_1__* STATE (int ) ;
 int WAIT_FOR_INIT ;
 int atomic_inc (int *) ;
 int fscache_cookie_get (struct fscache_cookie*,int ) ;
 int fscache_cookie_get_attach_object ;
 int fscache_object_work_func ;
 struct fscache_transition* fscache_osm_init_oob ;
 int spin_lock_init (int *) ;

void fscache_object_init(struct fscache_object *object,
    struct fscache_cookie *cookie,
    struct fscache_cache *cache)
{
 const struct fscache_transition *t;

 atomic_inc(&cache->object_count);

 object->state = STATE(WAIT_FOR_INIT);
 object->oob_table = fscache_osm_init_oob;
 object->flags = 1 << FSCACHE_OBJECT_IS_LIVE;
 spin_lock_init(&object->lock);
 INIT_LIST_HEAD(&object->cache_link);
 INIT_HLIST_NODE(&object->cookie_link);
 INIT_WORK(&object->work, fscache_object_work_func);
 INIT_LIST_HEAD(&object->dependents);
 INIT_LIST_HEAD(&object->dep_link);
 INIT_LIST_HEAD(&object->pending_ops);
 object->n_children = 0;
 object->n_ops = object->n_in_progress = object->n_exclusive = 0;
 object->events = 0;
 object->store_limit = 0;
 object->store_limit_l = 0;
 object->cache = cache;
 object->cookie = cookie;
 fscache_cookie_get(cookie, fscache_cookie_get_attach_object);
 object->parent = ((void*)0);




 object->oob_event_mask = 0;
 for (t = object->oob_table; t->events; t++)
  object->oob_event_mask |= t->events;
 object->event_mask = object->oob_event_mask;
 for (t = object->state->transitions; t->events; t++)
  object->event_mask |= t->events;
}
