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
struct kprobe_blacklist_entry {unsigned long start_addr; unsigned long end_addr; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct kprobe_blacklist_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kprobe_blacklist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(unsigned long entry)
{
	struct kprobe_blacklist_entry *ent;
	unsigned long offset = 0, size = 0;

	if (!FUNC2(entry) ||
	    !FUNC1(entry, &size, &offset))
		return -EINVAL;

	ent = FUNC3(sizeof(*ent), GFP_KERNEL);
	if (!ent)
		return -ENOMEM;
	ent->start_addr = entry;
	ent->end_addr = entry + size;
	FUNC0(&ent->list);
	FUNC4(&ent->list, &kprobe_blacklist);

	return (int)size;
}