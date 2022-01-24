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
struct super_block {int dummy; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {struct jfs_log* log; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jfs_log*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct jfs_log*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int wait)
{
	struct jfs_log *log = FUNC0(sb)->log;

	/* log == NULL indicates read-only mount */
	if (log) {
		/*
		 * Write quota structures to quota file, sync_blockdev() will
		 * write them to disk later
		 */
		FUNC1(sb, -1);
		FUNC2(log, wait);
		FUNC3(log, 0);
	}

	return 0;
}