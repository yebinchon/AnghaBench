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
struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event {char const* name; int /*<<< orphan*/ * event; scalar_t__ desc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static const char *FUNC2(int set, int nr, struct pmu_events_map *map)
{
	int rc, event_nr, wanted = FUNC0(set) + nr;

	if (map) {
		struct pmu_event *evp = map->table;

		for (; evp->name || evp->event || evp->desc; ++evp) {
			if (evp->name == NULL || evp->event == NULL)
				continue;
			rc = FUNC1(evp->event, "event=%x", &event_nr);
			if (rc == 1 && event_nr == wanted)
				return evp->name;
		}
	}
	return NULL;
}