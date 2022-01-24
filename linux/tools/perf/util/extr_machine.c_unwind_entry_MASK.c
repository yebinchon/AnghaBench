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
typedef  int /*<<< orphan*/  u64 ;
struct unwind_entry {int /*<<< orphan*/ * sym; int /*<<< orphan*/  map; int /*<<< orphan*/  ip; } ;
struct callchain_cursor {int dummy; } ;
struct TYPE_2__ {scalar_t__ hide_unresolved; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct callchain_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct callchain_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC4(struct unwind_entry *entry, void *arg)
{
	struct callchain_cursor *cursor = arg;
	const char *srcline = NULL;
	u64 addr = entry->ip;

	if (symbol_conf.hide_unresolved && entry->sym == NULL)
		return 0;

	if (FUNC0(cursor, entry->map, entry->sym, entry->ip) == 0)
		return 0;

	/*
	 * Convert entry->ip from a virtual address to an offset in
	 * its corresponding binary.
	 */
	if (entry->map)
		addr = FUNC3(entry->map, entry->ip);

	srcline = FUNC2(entry->map, entry->sym, addr);
	return FUNC1(cursor, entry->ip,
				       entry->map, entry->sym,
				       false, NULL, 0, 0, 0, srcline);
}