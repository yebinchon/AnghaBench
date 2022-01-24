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
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_sb_info {struct jffs2_inodirty* wbuf_inodes; } ;
struct jffs2_inodirty {struct jffs2_inodirty* next; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct jffs2_inodirty inodirty_nomem ; 
 int /*<<< orphan*/  FUNC0 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC3 (struct jffs2_sb_info*,int /*<<< orphan*/ ) ; 
 struct jffs2_inodirty* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct jffs2_sb_info *c, uint32_t ino)
{
	struct jffs2_inodirty *new;

	/* Schedule delayed write-buffer write-out */
	FUNC2(c);

	if (FUNC3(c, ino))
		return;

	new = FUNC4(sizeof(*new), GFP_KERNEL);
	if (!new) {
		FUNC1(1, "No memory to allocate inodirty. Fallback to all considered dirty\n");
		FUNC0(c);
		c->wbuf_inodes = &inodirty_nomem;
		return;
	}
	new->ino = ino;
	new->next = c->wbuf_inodes;
	c->wbuf_inodes = new;
	return;
}