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
struct super_block {int dummy; } ;
struct jffs2_sb_info {int /*<<< orphan*/  alloc_sem; int /*<<< orphan*/  wbuf_dwork; } ;

/* Variables and functions */
 struct jffs2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC3 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, int wait)
{
	struct jffs2_sb_info *c = FUNC0(sb);

#ifdef CONFIG_JFFS2_FS_WRITEBUFFER
	if (jffs2_is_writebuffered(c))
		cancel_delayed_work_sync(&c->wbuf_dwork);
#endif

	FUNC4(&c->alloc_sem);
	FUNC2(c);
	FUNC5(&c->alloc_sem);
	return 0;
}