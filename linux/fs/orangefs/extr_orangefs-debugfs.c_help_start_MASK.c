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
struct seq_file {void* private; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_DEBUGFS_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  orangefs_help_file_lock ; 

__attribute__((used)) static void *FUNC2(struct seq_file *m, loff_t *pos)
{
	void *payload = NULL;

	FUNC0(GOSSIP_DEBUGFS_DEBUG, "help_start: start\n");

	FUNC1(&orangefs_help_file_lock);

	if (*pos == 0)
		payload = m->private;

	return payload;
}