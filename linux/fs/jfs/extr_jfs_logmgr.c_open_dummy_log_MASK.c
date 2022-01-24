#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct jfs_log {int dummy; } ;
struct TYPE_9__ {TYPE_1__* log; int /*<<< orphan*/  log_list; } ;
struct TYPE_8__ {int no_integrity; int size; int /*<<< orphan*/  sb_list; scalar_t__ base; int /*<<< orphan*/  syncwait; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* dummy_log ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jfs_log_mutex ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb)
{
	int rc;

	FUNC9(&jfs_log_mutex);
	if (!dummy_log) {
		dummy_log = FUNC6(sizeof(struct jfs_log), GFP_KERNEL);
		if (!dummy_log) {
			FUNC10(&jfs_log_mutex);
			return -ENOMEM;
		}
		FUNC0(&dummy_log->sb_list);
		FUNC4(&dummy_log->syncwait);
		dummy_log->no_integrity = 1;
		/* Make up some stuff */
		dummy_log->base = 0;
		dummy_log->size = 1024;
		rc = FUNC8(dummy_log);
		if (rc) {
			FUNC5(dummy_log);
			dummy_log = NULL;
			FUNC10(&jfs_log_mutex);
			return rc;
		}
	}

	FUNC2(dummy_log);
	FUNC7(&FUNC1(sb)->log_list, &dummy_log->sb_list);
	FUNC1(sb)->log = dummy_log;
	FUNC3(dummy_log);
	FUNC10(&jfs_log_mutex);

	return 0;
}