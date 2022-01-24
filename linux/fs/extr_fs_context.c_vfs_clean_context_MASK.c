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
struct fs_context {int need_free; int /*<<< orphan*/  phase; int /*<<< orphan*/  purpose; int /*<<< orphan*/ * source; int /*<<< orphan*/  security; scalar_t__ sb_flags; int /*<<< orphan*/ * s_fs_info; int /*<<< orphan*/ * fs_private; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct fs_context*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FS_CONTEXT_AWAITING_RECONF ; 
 int /*<<< orphan*/  FS_CONTEXT_FOR_RECONFIGURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fs_context*) ; 

void FUNC3(struct fs_context *fc)
{
	if (fc->need_free && fc->ops && fc->ops->free)
		fc->ops->free(fc);
	fc->need_free = false;
	fc->fs_private = NULL;
	fc->s_fs_info = NULL;
	fc->sb_flags = 0;
	FUNC1(&fc->security);
	FUNC0(fc->source);
	fc->source = NULL;

	fc->purpose = FS_CONTEXT_FOR_RECONFIGURE;
	fc->phase = FS_CONTEXT_AWAITING_RECONF;
}