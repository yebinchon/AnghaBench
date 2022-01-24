#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* gh_gl; } ;
struct gfs2_inode {TYPE_2__ i_iopen_gh; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gl_flags; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLF_DEMOTE ; 
 int /*<<< orphan*/  FUNC1 (struct dentry const*) ; 
 scalar_t__ FUNC2 (struct dentry const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const struct dentry *dentry)
{
	struct gfs2_inode *ginode;

	if (FUNC2(dentry))
		return 0;

	ginode = FUNC0(FUNC1(dentry));
	if (!FUNC3(&ginode->i_iopen_gh))
		return 0;

	if (FUNC4(GLF_DEMOTE, &ginode->i_iopen_gh.gh_gl->gl_flags))
		return 1;

	return 0;
}