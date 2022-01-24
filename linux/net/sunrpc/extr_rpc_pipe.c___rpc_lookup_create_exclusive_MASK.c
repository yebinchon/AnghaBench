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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qstr FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC3 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *parent,
					  const char *name)
{
	struct qstr q = FUNC1(name, FUNC6(name));
	struct dentry *dentry = FUNC3(parent, &q);
	if (!dentry) {
		dentry = FUNC2(parent, &q);
		if (!dentry)
			return FUNC0(-ENOMEM);
	}
	if (FUNC4(dentry))
		return dentry;
	FUNC5(dentry);
	return FUNC0(-EEXIST);
}