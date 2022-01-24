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
typedef  size_t uint32_t ;
struct jffs2_xattr_datum {size_t xid; size_t version; int /*<<< orphan*/  xindex; } ;
struct jffs2_sb_info {scalar_t__ highest_xid; int /*<<< orphan*/ * xattrindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct jffs2_xattr_datum* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t XATTRINDEX_HASHSIZE ; 
 struct jffs2_xattr_datum* FUNC1 () ; 
 struct jffs2_xattr_datum* FUNC2 (struct jffs2_sb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct jffs2_xattr_datum *FUNC4(struct jffs2_sb_info *c,
						  uint32_t xid, uint32_t version)
{
	struct jffs2_xattr_datum *xd;

	xd = FUNC2(c, xid);
	if (!xd) {
		xd = FUNC1();
		if (!xd)
			return FUNC0(-ENOMEM);
		xd->xid = xid;
		xd->version = version;
		if (xd->xid > c->highest_xid)
			c->highest_xid = xd->xid;
		FUNC3(&xd->xindex, &c->xattrindex[xid % XATTRINDEX_HASHSIZE]);
	}
	return xd;
}