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
struct jffs2_inode_info {int /*<<< orphan*/  target; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct jffs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  jffs2_inode_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct jffs2_inode_info*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct jffs2_inode_info *f = FUNC0(inode);

	FUNC1(f->target);
	FUNC2(jffs2_inode_cachep, f);
}