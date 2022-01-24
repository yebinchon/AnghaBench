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
struct ocfs2_super {int max_slots; int /*<<< orphan*/  osb_lock; struct ocfs2_replay_map* replay_map; } ;
struct ocfs2_replay_map {int rm_slots; int* rm_replay_slots; int /*<<< orphan*/  rm_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REPLAY_UNNEEDED ; 
 struct ocfs2_replay_map* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ocfs2_super *osb)
{
	struct ocfs2_replay_map *replay_map;
	int i, node_num;

	/* If replay map is already set, we don't do it again */
	if (osb->replay_map)
		return 0;

	replay_map = FUNC0(sizeof(struct ocfs2_replay_map) +
			     (osb->max_slots * sizeof(char)), GFP_KERNEL);

	if (!replay_map) {
		FUNC1(-ENOMEM);
		return -ENOMEM;
	}

	FUNC3(&osb->osb_lock);

	replay_map->rm_slots = osb->max_slots;
	replay_map->rm_state = REPLAY_UNNEEDED;

	/* set rm_replay_slots for offline slot(s) */
	for (i = 0; i < replay_map->rm_slots; i++) {
		if (FUNC2(osb, i, &node_num) == -ENOENT)
			replay_map->rm_replay_slots[i] = 1;
	}

	osb->replay_map = replay_map;
	FUNC4(&osb->osb_lock);
	return 0;
}