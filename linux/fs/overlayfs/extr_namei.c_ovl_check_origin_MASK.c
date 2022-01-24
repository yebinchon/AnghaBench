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
struct ovl_path {int dummy; } ;
struct ovl_fs {int dummy; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (struct ovl_fh*) ; 
 int /*<<< orphan*/  OVL_XATTR_ORIGIN ; 
 int FUNC1 (struct ovl_fh*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ovl_fh*) ; 
 int FUNC4 (struct ovl_fs*,struct ovl_fh*,int,struct dentry*,struct ovl_path**) ; 
 struct ovl_fh* FUNC5 (struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ovl_fs *ofs, struct dentry *upperdentry,
			    struct ovl_path **stackp, unsigned int *ctrp)
{
	struct ovl_fh *fh = FUNC5(upperdentry, OVL_XATTR_ORIGIN);
	int err;

	if (FUNC0(fh))
		return FUNC1(fh);

	err = FUNC4(ofs, fh, false, upperdentry, stackp);
	FUNC3(fh);

	if (err) {
		if (err == -ESTALE)
			return 0;
		return err;
	}

	if (FUNC2(*ctrp))
		return -EIO;

	*ctrp = 1;
	return 0;
}