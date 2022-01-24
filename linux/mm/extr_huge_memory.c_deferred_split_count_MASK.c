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
struct shrinker {int dummy; } ;
struct shrink_control {TYPE_1__* memcg; int /*<<< orphan*/  nid; } ;
struct deferred_split {int /*<<< orphan*/  split_queue_len; } ;
struct pglist_data {struct deferred_split deferred_split_queue; } ;
struct TYPE_2__ {struct deferred_split deferred_split_queue; } ;

/* Variables and functions */
 struct pglist_data* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct shrinker *shrink,
		struct shrink_control *sc)
{
	struct pglist_data *pgdata = FUNC0(sc->nid);
	struct deferred_split *ds_queue = &pgdata->deferred_split_queue;

#ifdef CONFIG_MEMCG
	if (sc->memcg)
		ds_queue = &sc->memcg->deferred_split_queue;
#endif
	return FUNC1(ds_queue->split_queue_len);
}