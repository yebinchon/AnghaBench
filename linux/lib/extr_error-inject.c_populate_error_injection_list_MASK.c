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
struct error_injection_entry {int /*<<< orphan*/  etype; scalar_t__ addr; } ;
struct ei_entry {unsigned long start_addr; unsigned long end_addr; int /*<<< orphan*/  list; void* priv; int /*<<< orphan*/  etype; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (void*) ; 
 int /*<<< orphan*/  ei_mutex ; 
 int /*<<< orphan*/  error_injection_list ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct ei_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*) ; 

__attribute__((used)) static void FUNC9(struct error_injection_entry *start,
					  struct error_injection_entry *end,
					  void *priv)
{
	struct error_injection_entry *iter;
	struct ei_entry *ent;
	unsigned long entry, offset = 0, size = 0;

	FUNC6(&ei_mutex);
	for (iter = start; iter < end; iter++) {
		entry = FUNC1((void *)iter->addr);

		if (!FUNC3(entry) ||
		    !FUNC2(entry, &size, &offset)) {
			FUNC8("Failed to find error inject entry at %p\n",
				(void *)entry);
			continue;
		}

		ent = FUNC4(sizeof(*ent), GFP_KERNEL);
		if (!ent)
			break;
		ent->start_addr = entry;
		ent->end_addr = entry + size;
		ent->etype = iter->etype;
		ent->priv = priv;
		FUNC0(&ent->list);
		FUNC5(&ent->list, &error_injection_list);
	}
	FUNC7(&ei_mutex);
}