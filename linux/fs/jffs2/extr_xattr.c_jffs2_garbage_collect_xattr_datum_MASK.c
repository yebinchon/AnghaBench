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
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_xattr_datum {int flags; struct jffs2_raw_node_ref* node; int /*<<< orphan*/  version; int /*<<< orphan*/  xid; scalar_t__ value_len; scalar_t__ name_len; } ;
struct jffs2_sb_info {int /*<<< orphan*/  xattr_sem; } ;
struct jffs2_raw_xattr {int dummy; } ;
struct jffs2_raw_node_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JFFS2_SUMMARY_XATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int JFFS2_XFLAGS_DEAD ; 
 int JFFS2_XFLAGS_INVALID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*,struct jffs2_raw_node_ref*) ; 
 int FUNC5 (struct jffs2_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 int /*<<< orphan*/  FUNC7 (struct jffs2_raw_node_ref*) ; 
 int FUNC8 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd,
				      struct jffs2_raw_node_ref *raw)
{
	uint32_t totlen, length, old_ofs;
	int rc = 0;

	FUNC3(&c->xattr_sem);
	if (xd->node != raw)
		goto out;
	if (xd->flags & (JFFS2_XFLAGS_DEAD|JFFS2_XFLAGS_INVALID))
		goto out;

	rc = FUNC6(c, xd);
	if (FUNC9(rc)) {
		rc = (rc > 0) ? 0 : rc;
		goto out;
	}
	old_ofs = FUNC7(xd->node);
	totlen = FUNC1(sizeof(struct jffs2_raw_xattr)
			+ xd->name_len + 1 + xd->value_len);
	rc = FUNC5(c, totlen, &length, JFFS2_SUMMARY_XATTR_SIZE);
	if (rc) {
		FUNC0("jffs2_reserve_space_gc()=%d, request=%u\n", rc, totlen);
		goto out;
	}
	rc = FUNC8(c, xd);
	if (!rc)
		FUNC2("xdatum (xid=%u, version=%u) GC'ed from %#08x to %08x\n",
			  xd->xid, xd->version, old_ofs, FUNC7(xd->node));
 out:
	if (!rc)
		FUNC4(c, raw);
	FUNC10(&c->xattr_sem);
	return rc;
}