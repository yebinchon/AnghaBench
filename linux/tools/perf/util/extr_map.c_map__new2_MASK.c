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
typedef  int /*<<< orphan*/  u64 ;
struct map {int dummy; } ;
struct kmap {int dummy; } ;
struct dso {scalar_t__ kernel; } ;

/* Variables and functions */
 struct map* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dso*) ; 

struct map *FUNC2(u64 start, struct dso *dso)
{
	struct map *map = FUNC0(1, (sizeof(*map) +
				     (dso->kernel ? sizeof(struct kmap) : 0)));
	if (map != NULL) {
		/*
		 * ->end will be filled after we load all the symbols
		 */
		FUNC1(map, start, 0, 0, dso);
	}

	return map;
}