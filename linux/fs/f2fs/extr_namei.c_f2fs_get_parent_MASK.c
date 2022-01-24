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
struct page {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (struct page*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct qstr FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,struct qstr*,struct page**) ; 

struct dentry *FUNC8(struct dentry *child)
{
	struct qstr dotdot = FUNC3("..", 2);
	struct page *page;
	unsigned long ino = FUNC7(FUNC4(child), &dotdot, &page);
	if (!ino) {
		if (FUNC2(page))
			return FUNC0(page);
		return FUNC1(-ENOENT);
	}
	return FUNC5(FUNC6(child->d_sb, ino));
}