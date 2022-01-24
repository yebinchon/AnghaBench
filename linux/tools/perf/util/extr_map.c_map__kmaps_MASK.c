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
struct map_groups {int dummy; } ;
struct map {int dummy; } ;
struct kmap {struct map_groups* kmaps; } ;

/* Variables and functions */
 struct kmap* FUNC0 (struct map*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

struct map_groups *FUNC2(struct map *map)
{
	struct kmap *kmap = FUNC0(map);

	if (!kmap || !kmap->kmaps) {
		FUNC1("Internal error: map__kmaps with a non-kernel map\n");
		return NULL;
	}
	return kmap->kmaps;
}