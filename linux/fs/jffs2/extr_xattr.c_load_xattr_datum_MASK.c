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
struct jffs2_xattr_datum {int flags; scalar_t__ xname; } ;
struct jffs2_sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int JFFS2_XATTR_IS_CORRUPTED ; 
 int JFFS2_XFLAGS_DEAD ; 
 int JFFS2_XFLAGS_INVALID ; 
 int FUNC1 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 int FUNC2 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{
	/* must be called under down_write(xattr_sem);
	 * rc < 0 : recoverable error, try again
	 * rc = 0 : success
	 * rc > 0 : Unrecoverable error, this node should be deleted.
	 */
	int rc = 0;

	FUNC0(xd->flags & JFFS2_XFLAGS_DEAD);
	if (xd->xname)
		return 0;
	if (xd->flags & JFFS2_XFLAGS_INVALID)
		return JFFS2_XATTR_IS_CORRUPTED;
	if (FUNC4(FUNC3(c, xd)))
		rc = FUNC2(c, xd);
	if (!rc)
		rc = FUNC1(c, xd);
	return rc;
}