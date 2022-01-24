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
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr const*) ; 
 int FUNC3 (struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct dentry *FUNC6(const struct qstr *name,
				    struct dentry *dir,
				    unsigned int flags)
{
	struct dentry *dentry = FUNC2(dir, name);
	if (dentry) {
		int error = FUNC3(dentry, flags);
		if (FUNC5(error <= 0)) {
			if (!error)
				FUNC1(dentry);
			FUNC4(dentry);
			return FUNC0(error);
		}
	}
	return dentry;
}