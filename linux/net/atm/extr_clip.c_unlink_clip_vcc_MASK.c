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
struct clip_vcc {scalar_t__ xoff; struct atmarp_entry* entry; struct clip_vcc* next; } ;
struct atmarp_entry {TYPE_1__* neigh; void* expires; struct clip_vcc* vccs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; void* used; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEIGH_UPDATE_F_ADMIN ; 
 int /*<<< orphan*/  NUD_NONE ; 
 void* jiffies ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(struct clip_vcc *clip_vcc)
{
	struct atmarp_entry *entry = clip_vcc->entry;
	struct clip_vcc **walk;

	if (!entry) {
		FUNC4("!clip_vcc->entry (clip_vcc %p)\n", clip_vcc);
		return;
	}
	FUNC1(entry->neigh->dev);	/* block clip_start_xmit() */
	entry->neigh->used = jiffies;
	for (walk = &entry->vccs; *walk; walk = &(*walk)->next)
		if (*walk == clip_vcc) {
			int error;

			*walk = clip_vcc->next;	/* atomic */
			clip_vcc->entry = NULL;
			if (clip_vcc->xoff)
				FUNC3(entry->neigh->dev);
			if (entry->vccs)
				goto out;
			entry->expires = jiffies - 1;
			/* force resolution or expiration */
			error = FUNC0(entry->neigh, NULL, NUD_NONE,
					     NEIGH_UPDATE_F_ADMIN, 0);
			if (error)
				FUNC4("neigh_update failed with %d\n", error);
			goto out;
		}
	FUNC4("ATMARP: failed (entry %p, vcc 0x%p)\n", entry, clip_vcc);
out:
	FUNC2(entry->neigh->dev);
}