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
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qstr FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,struct qstr*) ; 

struct dentry *FUNC6(struct dentry *child)
{
	struct qstr dotdot = FUNC1("..", 2);
	unsigned long ino = FUNC5(FUNC2(child), &dotdot);
	if (!ino)
		return FUNC0(-ENOENT);
	return FUNC3(FUNC4(child->d_sb, ino));
}