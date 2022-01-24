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
typedef  scalar_t__ time_t ;
struct cache_head {scalar_t__ last_refresh; scalar_t__ expiry_time; int /*<<< orphan*/  ref; scalar_t__ flags; int /*<<< orphan*/  cache_list; } ;
struct cache_detail {scalar_t__ flush_time; } ;

/* Variables and functions */
 scalar_t__ CACHE_NEW_EXPIRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct cache_head *h, struct cache_detail *detail)
{
	time_t now = FUNC2();
	FUNC0(&h->cache_list);
	h->flags = 0;
	FUNC1(&h->ref);
	h->expiry_time = now + CACHE_NEW_EXPIRY;
	if (now <= detail->flush_time)
		/* ensure it isn't already expired */
		now = detail->flush_time + 1;
	h->last_refresh = now;
}