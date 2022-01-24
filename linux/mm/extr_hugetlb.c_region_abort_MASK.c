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
struct resv_map {int /*<<< orphan*/  lock; int /*<<< orphan*/  adds_in_progress; int /*<<< orphan*/  region_cache_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct resv_map *resv, long f, long t)
{
	FUNC1(&resv->lock);
	FUNC0(!resv->region_cache_count);
	resv->adds_in_progress--;
	FUNC2(&resv->lock);
}