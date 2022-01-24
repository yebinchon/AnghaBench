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
struct strfilter {int dummy; } ;
struct TYPE_2__ {char* event; char* group; } ;
struct probe_cache_entry {char* spev; TYPE_1__ pev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 int FUNC1 (struct strfilter*,char*) ; 

__attribute__((used)) static bool FUNC2(struct probe_cache_entry *entry,
				       struct strfilter *filter)
{
	char buf[128], *ptr = entry->spev;

	if (entry->pev.event) {
		FUNC0(buf, 128, "%s:%s", entry->pev.group, entry->pev.event);
		ptr = buf;
	}
	return FUNC1(filter, ptr);
}