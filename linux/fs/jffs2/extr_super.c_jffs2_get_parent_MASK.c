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
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_inode_info {TYPE_1__* inocache; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  ino; int /*<<< orphan*/  pino_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *child)
{
	struct jffs2_inode_info *f;
	uint32_t pino;

	FUNC0(!FUNC4(child));

	f = FUNC2(FUNC3(child));

	pino = f->inocache->pino_nlink;

	FUNC1("Parent of directory ino #%u is #%u\n",
		    f->inocache->ino, pino);

	return FUNC5(FUNC6(child->d_sb, pino));
}