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
 struct dentry* FUNC1 (struct qstr*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,struct dentry*,int,struct qstr*) ; 
 struct dentry* FUNC3 (struct qstr*,struct dentry*,int /*<<< orphan*/ ) ; 

struct dentry *FUNC4(const char *name,
				       struct dentry *base, int len)
{
	struct qstr this;
	int err;
	struct dentry *ret;

	err = FUNC2(name, base, len, &this);
	if (err)
		return FUNC0(err);

	ret = FUNC1(&this, base, 0);
	if (!ret)
		ret = FUNC3(&this, base, 0);
	return ret;
}