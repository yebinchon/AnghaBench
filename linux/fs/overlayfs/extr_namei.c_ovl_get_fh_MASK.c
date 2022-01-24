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
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ovl_fh* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ovl_fh*) ; 
 struct ovl_fh* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ovl_fh*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int FUNC5 (struct dentry*,char const*,struct ovl_fh*,int) ; 

__attribute__((used)) static struct ovl_fh *FUNC6(struct dentry *dentry, const char *name)
{
	int res, err;
	struct ovl_fh *fh = NULL;

	res = FUNC5(dentry, name, NULL, 0);
	if (res < 0) {
		if (res == -ENODATA || res == -EOPNOTSUPP)
			return NULL;
		goto fail;
	}
	/* Zero size value means "copied up but origin unknown" */
	if (res == 0)
		return NULL;

	fh = FUNC2(res, GFP_KERNEL);
	if (!fh)
		return FUNC0(-ENOMEM);

	res = FUNC5(dentry, name, fh, res);
	if (res < 0)
		goto fail;

	err = FUNC3(fh, res);
	if (err < 0) {
		if (err == -ENODATA)
			goto out;
		goto invalid;
	}

	return fh;

out:
	FUNC1(fh);
	return NULL;

fail:
	FUNC4("overlayfs: failed to get origin (%i)\n", res);
	goto out;
invalid:
	FUNC4("overlayfs: invalid origin (%*phN)\n", res, fh);
	goto out;
}