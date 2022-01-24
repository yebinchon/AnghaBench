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
struct ovl_fs {int /*<<< orphan*/  upper_mnt; } ;
struct ovl_fh {int dummy; } ;
typedef  struct ovl_fh dentry ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct ovl_fh* FUNC0 (struct ovl_fh*) ; 
 struct ovl_fh* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct ovl_fh*) ; 
 int /*<<< orphan*/  OVL_XATTR_UPPER ; 
 int /*<<< orphan*/  FUNC3 (struct ovl_fh*) ; 
 struct ovl_fh* FUNC4 (struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct ovl_fh*) ; 
 struct ovl_fh* FUNC7 (struct ovl_fh*,int /*<<< orphan*/ ,int) ; 
 struct ovl_fh* FUNC8 (struct ovl_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ovl_fh*,struct ovl_fh*) ; 

struct dentry *FUNC10(struct ovl_fs *ofs, struct dentry *index)
{
	struct ovl_fh *fh;
	struct dentry *upper;

	if (!FUNC3(index))
		return FUNC4(index);

	fh = FUNC8(index, OVL_XATTR_UPPER);
	if (FUNC2(fh))
		return FUNC0(fh);

	upper = FUNC7(fh, ofs->upper_mnt, true);
	FUNC6(fh);

	if (FUNC2(upper))
		return upper ?: FUNC1(-ESTALE);

	if (!FUNC3(upper)) {
		FUNC9("overlayfs: invalid index upper (%pd2, upper=%pd2).\n",
				    index, upper);
		FUNC5(upper);
		return FUNC1(-EIO);
	}

	return upper;
}