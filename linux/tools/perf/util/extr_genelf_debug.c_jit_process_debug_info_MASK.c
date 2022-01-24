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
typedef  scalar_t__ uint64_t ;
struct debug_entry {scalar_t__ addr; } ;
struct buffer_ext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_ext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_ext*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_ext*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_ext*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_ext*) ; 
 struct debug_entry* FUNC5 (struct debug_entry*) ; 

__attribute__((used)) static int
FUNC6(uint64_t code_addr,
		       void *debug, int nr_debug_entries,
		       struct buffer_ext *dl,
		       struct buffer_ext *da,
		       struct buffer_ext *di)
{
	struct debug_entry *ent = debug;
	int i;

	for (i = 0; i < nr_debug_entries; i++) {
		ent->addr = ent->addr - code_addr;
		ent = FUNC5(ent);
	}
	FUNC0(di, FUNC4(dl));
	FUNC2(dl, debug, nr_debug_entries, 0);
	FUNC1(da);
	if (0) FUNC3(da, "abbrev");

	return 0;
}