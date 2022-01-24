#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cache_head {int dummy; } ;
struct cache_deferred_req {int /*<<< orphan*/  recent; struct cache_head* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_deferred_req*,struct cache_head*) ; 
 int /*<<< orphan*/  cache_defer_cnt ; 
 int /*<<< orphan*/  cache_defer_list ; 
 int /*<<< orphan*/  cache_defer_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cache_deferred_req *dreq,
			   struct cache_head *item,
			   int count_me)
{

	dreq->item = item;

	FUNC2(&cache_defer_lock);

	FUNC0(dreq, item);

	if (count_me) {
		cache_defer_cnt++;
		FUNC1(&dreq->recent, &cache_defer_list);
	}

	FUNC3(&cache_defer_lock);

}