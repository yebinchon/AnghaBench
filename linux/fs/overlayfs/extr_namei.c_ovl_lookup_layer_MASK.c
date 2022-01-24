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
struct TYPE_2__ {int len; char* name; } ;
struct ovl_lookup_data {TYPE_1__ name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*,struct ovl_lookup_data*,char const*,size_t,int,char const*,struct dentry**) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int FUNC6(struct dentry *base, struct ovl_lookup_data *d,
			    struct dentry **ret)
{
	/* Counting down from the end, since the prefix can change */
	size_t rem = d->name.len - 1;
	struct dentry *dentry = NULL;
	int err;

	if (d->name.name[0] != '/')
		return FUNC4(base, d, d->name.name, d->name.len,
					 0, "", ret);

	while (!FUNC0(base) && FUNC2(base)) {
		const char *s = d->name.name + d->name.len - rem;
		const char *next = FUNC5(s, '/');
		size_t thislen = next - s;
		bool end = !next[0];

		/* Verify we did not go off the rails */
		if (FUNC1(s[-1] != '/'))
			return -EIO;

		err = FUNC4(base, d, s, thislen,
					d->name.len - rem, next, &base);
		FUNC3(dentry);
		if (err)
			return err;
		dentry = base;
		if (end)
			break;

		rem -= thislen + 1;

		if (FUNC1(rem >= d->name.len))
			return -EIO;
	}
	*ret = dentry;
	return 0;
}