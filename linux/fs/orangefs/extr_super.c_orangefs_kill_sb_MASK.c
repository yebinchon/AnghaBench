#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * prev; } ;
struct TYPE_4__ {int mount_pending; TYPE_2__ list; int /*<<< orphan*/  no_list; int /*<<< orphan*/  devname; int /*<<< orphan*/  fs_id; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_SUPER_DEBUG ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  orangefs_request_mutex ; 
 int /*<<< orphan*/  orangefs_superblocks_lock ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct super_block *sb)
{
	int r;
	FUNC2(GOSSIP_SUPER_DEBUG, "orangefs_kill_sb: called\n");

	/* provided sb cleanup */
	FUNC4(sb);

	if (!FUNC0(sb)) {
		FUNC5(&orangefs_request_mutex);
		FUNC6(&orangefs_request_mutex);
		return;
	}
	/*
	 * issue the unmount to userspace to tell it to remove the
	 * dynamic mount info it has for this superblock
	 */
	r = FUNC7(FUNC0(sb)->id, FUNC0(sb)->fs_id,
	    FUNC0(sb)->devname);
	if (!r)
		FUNC0(sb)->mount_pending = 1;

	if (!FUNC0(sb)->no_list) {
		/* remove the sb from our list of orangefs specific sb's */
		FUNC8(&orangefs_superblocks_lock);
		/* not list_del_init */
		FUNC1(&FUNC0(sb)->list);
		FUNC0(sb)->list.prev = NULL;
		FUNC9(&orangefs_superblocks_lock);
	}

	/*
	 * make sure that ORANGEFS_DEV_REMOUNT_ALL loop that might've seen us
	 * gets completed before we free the dang thing.
	 */
	FUNC5(&orangefs_request_mutex);
	FUNC6(&orangefs_request_mutex);

	/* free the orangefs superblock private data */
	FUNC3(FUNC0(sb));
}