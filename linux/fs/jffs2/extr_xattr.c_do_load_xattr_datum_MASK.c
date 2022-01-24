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
struct jffs2_xattr_datum {int name_len; int value_len; size_t data_crc; char* xname; char* xvalue; int hashkey; int /*<<< orphan*/  xprefix; int /*<<< orphan*/  xid; int /*<<< orphan*/  xindex; int /*<<< orphan*/  flags; int /*<<< orphan*/  node; } ;
struct jffs2_sb_info {size_t xdatum_mem_usage; int /*<<< orphan*/ * xattrindex; } ;
struct jffs2_raw_xattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,size_t,size_t,...) ; 
 int JFFS2_XATTR_IS_CORRUPTED ; 
 int /*<<< orphan*/  JFFS2_XFLAGS_HOT ; 
 int /*<<< orphan*/  JFFS2_XFLAGS_INVALID ; 
 scalar_t__ REF_PRISTINE ; 
 int XATTRINDEX_HASHSIZE ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct jffs2_sb_info*,int,size_t,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC13(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{
	/* must be called under down_write(xattr_sem) */
	char *data;
	size_t readlen;
	uint32_t crc, length;
	int i, ret, retry = 0;

	FUNC0(FUNC10(xd->node) != REF_PRISTINE);
	FUNC0(!FUNC8(&xd->xindex));
 retry:
	length = xd->name_len + 1 + xd->value_len;
	data = FUNC6(length, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC4(c, FUNC11(xd->node)+sizeof(struct jffs2_raw_xattr),
			       length, &readlen, data);

	if (ret || length!=readlen) {
		FUNC1("jffs2_flash_read() returned %d, request=%d, readlen=%zu, at %#08x\n",
			      ret, length, readlen, FUNC11(xd->node));
		FUNC5(data);
		return ret ? ret : -EIO;
	}

	data[xd->name_len] = '\0';
	crc = FUNC2(0, data, length);
	if (crc != xd->data_crc) {
		FUNC1("node CRC failed (JFFS2_NODETYPE_XATTR)"
			      " at %#08x, read: 0x%08x calculated: 0x%08x\n",
			      FUNC11(xd->node), xd->data_crc, crc);
		FUNC5(data);
		xd->flags |= JFFS2_XFLAGS_INVALID;
		return JFFS2_XATTR_IS_CORRUPTED;
	}

	xd->flags |= JFFS2_XFLAGS_HOT;
	xd->xname = data;
	xd->xvalue = data + xd->name_len+1;

	c->xdatum_mem_usage += length;

	xd->hashkey = FUNC12(xd->xprefix, xd->xname, xd->xvalue, xd->value_len);
	i = xd->hashkey % XATTRINDEX_HASHSIZE;
	FUNC7(&xd->xindex, &c->xattrindex[i]);
	if (!retry) {
		retry = 1;
		FUNC9(c);
		if (!xd->xname)
			goto retry;
	}

	FUNC3("success on loading xdatum (xid=%u, xprefix=%u, xname='%s')\n",
		  xd->xid, xd->xprefix, xd->xname);

	return 0;
}