#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fscache_transition {int events; } ;
struct fscache_object {int flags; int oob_event_mask; int event_mask; TYPE_1__* state; struct fscache_transition* oob_table; int /*<<< orphan*/  objlist_link; int /*<<< orphan*/ * parent; struct fscache_cookie* cookie; struct fscache_cache* cache; scalar_t__ store_limit_l; scalar_t__ store_limit; scalar_t__ events; scalar_t__ n_exclusive; scalar_t__ n_in_progress; scalar_t__ n_ops; scalar_t__ n_children; int /*<<< orphan*/  pending_ops; int /*<<< orphan*/  dep_link; int /*<<< orphan*/  dependents; int /*<<< orphan*/  work; int /*<<< orphan*/  cookie_link; int /*<<< orphan*/  cache_link; int /*<<< orphan*/  lock; } ;
struct fscache_cookie {int dummy; } ;
struct fscache_cache {int /*<<< orphan*/  object_count; } ;
struct TYPE_2__ {struct fscache_transition* transitions; } ;

/* Variables and functions */
 int FSCACHE_OBJECT_IS_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_FOR_INIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_cookie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_cookie_get_attach_object ; 
 int /*<<< orphan*/  fscache_object_work_func ; 
 struct fscache_transition* fscache_osm_init_oob ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct fscache_object *object,
			 struct fscache_cookie *cookie,
			 struct fscache_cache *cache)
{
	const struct fscache_transition *t;

	FUNC5(&cache->object_count);

	object->state = FUNC4(WAIT_FOR_INIT);
	object->oob_table = fscache_osm_init_oob;
	object->flags = 1 << FSCACHE_OBJECT_IS_LIVE;
	FUNC7(&object->lock);
	FUNC1(&object->cache_link);
	FUNC0(&object->cookie_link);
	FUNC2(&object->work, fscache_object_work_func);
	FUNC1(&object->dependents);
	FUNC1(&object->dep_link);
	FUNC1(&object->pending_ops);
	object->n_children = 0;
	object->n_ops = object->n_in_progress = object->n_exclusive = 0;
	object->events = 0;
	object->store_limit = 0;
	object->store_limit_l = 0;
	object->cache = cache;
	object->cookie = cookie;
	FUNC6(cookie, fscache_cookie_get_attach_object);
	object->parent = NULL;
#ifdef CONFIG_FSCACHE_OBJECT_LIST
	RB_CLEAR_NODE(&object->objlist_link);
#endif

	object->oob_event_mask = 0;
	for (t = object->oob_table; t->events; t++)
		object->oob_event_mask |= t->events;
	object->event_mask = object->oob_event_mask;
	for (t = object->state->transitions; t->events; t++)
		object->event_mask |= t->events;
}