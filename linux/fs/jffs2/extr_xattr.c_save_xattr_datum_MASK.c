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
typedef  int uint32_t ;
struct kvec {int iov_len; struct jffs2_raw_xattr* iov_base; } ;
struct jffs2_xattr_datum {int flags; int name_len; int value_len; struct jffs2_raw_xattr* xname; int /*<<< orphan*/  xprefix; int /*<<< orphan*/  version; int /*<<< orphan*/  xid; } ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_xattr {int name_len; void* node_crc; void* data_crc; void* value_len; int /*<<< orphan*/  xprefix; void* version; void* xid; void* hdr_crc; void* totlen; void* nodetype; void* magic; } ;
typedef  int /*<<< orphan*/  rx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int JFFS2_MAGIC_BITMASK ; 
 int JFFS2_NODETYPE_XATTR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,size_t,int) ; 
 int JFFS2_XFLAGS_DEAD ; 
 int JFFS2_XFLAGS_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int REF_OBSOLETE ; 
 int REF_PRISTINE ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct jffs2_raw_xattr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jffs2_raw_xattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct jffs2_sb_info*,int,int /*<<< orphan*/ ,void*) ; 
 int FUNC8 (struct jffs2_sb_info*,struct kvec*,int,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct jffs2_raw_xattr*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct jffs2_sb_info*) ; 

__attribute__((used)) static int FUNC11(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{
	/* must be called under down_write(xattr_sem) */
	struct jffs2_raw_xattr rx;
	struct kvec vecs[2];
	size_t length;
	int rc, totlen;
	uint32_t phys_ofs = FUNC10(c);

	FUNC0(!xd->xname);
	FUNC0(xd->flags & (JFFS2_XFLAGS_DEAD|JFFS2_XFLAGS_INVALID));

	vecs[0].iov_base = &rx;
	vecs[0].iov_len = sizeof(rx);
	vecs[1].iov_base = xd->xname;
	vecs[1].iov_len = xd->name_len + 1 + xd->value_len;
	totlen = vecs[0].iov_len + vecs[1].iov_len;

	/* Setup raw-xattr */
	FUNC9(&rx, 0, sizeof(rx));
	rx.magic = FUNC3(JFFS2_MAGIC_BITMASK);
	rx.nodetype = FUNC3(JFFS2_NODETYPE_XATTR);
	rx.totlen = FUNC4(FUNC2(totlen));
	rx.hdr_crc = FUNC4(FUNC5(0, &rx, sizeof(struct jffs2_unknown_node) - 4));

	rx.xid = FUNC4(xd->xid);
	rx.version = FUNC4(++xd->version);
	rx.xprefix = xd->xprefix;
	rx.name_len = xd->name_len;
	rx.value_len = FUNC3(xd->value_len);
	rx.data_crc = FUNC4(FUNC5(0, vecs[1].iov_base, vecs[1].iov_len));
	rx.node_crc = FUNC4(FUNC5(0, &rx, sizeof(struct jffs2_raw_xattr) - 4));

	rc = FUNC8(c, vecs, 2, phys_ofs, &length, 0);
	if (rc || totlen != length) {
		FUNC1("jffs2_flash_writev()=%d, req=%u, wrote=%zu, at %#08x\n",
			      rc, totlen, length, phys_ofs);
		rc = rc ? rc : -EIO;
		if (length)
			FUNC7(c, phys_ofs | REF_OBSOLETE, FUNC2(totlen), NULL);

		return rc;
	}
	/* success */
	FUNC7(c, phys_ofs | REF_PRISTINE, FUNC2(totlen), (void *)xd);

	FUNC6("success on saving xdatum (xid=%u, version=%u, xprefix=%u, xname='%s')\n",
		  xd->xid, xd->version, xd->xprefix, xd->xname);

	return 0;
}