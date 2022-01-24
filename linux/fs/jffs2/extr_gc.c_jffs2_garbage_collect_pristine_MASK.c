#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nodetype; int /*<<< orphan*/  hdr_crc; } ;
struct TYPE_5__ {int nsize; int /*<<< orphan*/  name_crc; union jffs2_node_union* name; int /*<<< orphan*/  node_crc; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_crc; int /*<<< orphan*/  csize; union jffs2_node_union* data; int /*<<< orphan*/  dsize; int /*<<< orphan*/  node_crc; } ;
union jffs2_node_union {TYPE_3__ u; TYPE_2__ d; TYPE_1__ i; } ;
typedef  scalar_t__ uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {scalar_t__ sector_size; struct jffs2_eraseblock* blocks; int /*<<< orphan*/  gcblock; } ;
struct jffs2_raw_node_ref {int dummy; } ;
struct jffs2_raw_inode {int dummy; } ;
struct jffs2_inode_cache {int dummy; } ;
struct jffs2_eraseblock {int dummy; } ;

/* Variables and functions */
 int EBADFD ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ JFFS2_MIN_DATA_LEN ; 
#define  JFFS2_NODETYPE_DIRENT 129 
#define  JFFS2_NODETYPE_INODE 128 
 scalar_t__ REF_OBSOLETE ; 
 scalar_t__ REF_PRISTINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,union jffs2_node_union*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_sb_info*,scalar_t__,scalar_t__,struct jffs2_inode_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct jffs2_sb_info*,struct jffs2_eraseblock*) ; 
 int /*<<< orphan*/  FUNC6 (struct jffs2_sb_info*,struct jffs2_eraseblock*) ; 
 int FUNC7 (struct jffs2_sb_info*,int,scalar_t__,size_t*,char*) ; 
 int FUNC8 (struct jffs2_sb_info*,scalar_t__,scalar_t__,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct jffs2_sb_info*,struct jffs2_raw_node_ref*) ; 
 int FUNC10 (struct jffs2_sb_info*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (union jffs2_node_union*) ; 
 union jffs2_node_union* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 
 int FUNC15 (struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC16 (struct jffs2_sb_info*,int /*<<< orphan*/ ,struct jffs2_raw_node_ref*) ; 
 int FUNC17 (union jffs2_node_union*,int) ; 
 scalar_t__ FUNC18 (struct jffs2_sb_info*) ; 

__attribute__((used)) static int FUNC19(struct jffs2_sb_info *c,
					  struct jffs2_inode_cache *ic,
					  struct jffs2_raw_node_ref *raw)
{
	union jffs2_node_union *node;
	size_t retlen;
	int ret;
	uint32_t phys_ofs, alloclen;
	uint32_t crc, rawlen;
	int retried = 0;

	FUNC4(1, "Going to GC REF_PRISTINE node at 0x%08x\n",
		  FUNC15(raw));

	alloclen = rawlen = FUNC16(c, c->gcblock, raw);

	/* Ask for a small amount of space (or the totlen if smaller) because we
	   don't want to force wastage of the end of a block if splitting would
	   work. */
	if (ic && alloclen > sizeof(struct jffs2_raw_inode) + JFFS2_MIN_DATA_LEN)
		alloclen = sizeof(struct jffs2_raw_inode) + JFFS2_MIN_DATA_LEN;

	ret = FUNC10(c, alloclen, &alloclen, rawlen);
	/* 'rawlen' is not the exact summary size; it is only an upper estimation */

	if (ret)
		return ret;

	if (alloclen < rawlen) {
		/* Doesn't fit untouched. We'll go the old route and split it */
		return -EBADFD;
	}

	node = FUNC12(rawlen, GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	ret = FUNC7(c, FUNC15(raw), rawlen, &retlen, (char *)node);
	if (!ret && retlen != rawlen)
		ret = -EIO;
	if (ret)
		goto out_node;

	crc = FUNC0(0, node, sizeof(struct jffs2_unknown_node)-4);
	if (FUNC2(node->u.hdr_crc) != crc) {
		FUNC14("Header CRC failed on REF_PRISTINE node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
			FUNC15(raw), FUNC2(node->u.hdr_crc), crc);
		goto bail;
	}

	switch(FUNC1(node->u.nodetype)) {
	case JFFS2_NODETYPE_INODE:
		crc = FUNC0(0, node, sizeof(node->i)-8);
		if (FUNC2(node->i.node_crc) != crc) {
			FUNC14("Node CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
				FUNC15(raw), FUNC2(node->i.node_crc),
				crc);
			goto bail;
		}

		if (FUNC2(node->i.dsize)) {
			crc = FUNC0(0, node->i.data, FUNC2(node->i.csize));
			if (FUNC2(node->i.data_crc) != crc) {
				FUNC14("Data CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
					FUNC15(raw),
					FUNC2(node->i.data_crc), crc);
				goto bail;
			}
		}
		break;

	case JFFS2_NODETYPE_DIRENT:
		crc = FUNC0(0, node, sizeof(node->d)-8);
		if (FUNC2(node->d.node_crc) != crc) {
			FUNC14("Node CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
				FUNC15(raw),
				FUNC2(node->d.node_crc), crc);
			goto bail;
		}

		if (FUNC17(node->d.name, node->d.nsize) != node->d.nsize) {
			FUNC14("Name in dirent node at 0x%08x contains zeroes\n",
				FUNC15(raw));
			goto bail;
		}

		if (node->d.nsize) {
			crc = FUNC0(0, node->d.name, node->d.nsize);
			if (FUNC2(node->d.name_crc) != crc) {
				FUNC14("Name CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
					FUNC15(raw),
					FUNC2(node->d.name_crc), crc);
				goto bail;
			}
		}
		break;
	default:
		/* If it's inode-less, we don't _know_ what it is. Just copy it intact */
		if (ic) {
			FUNC14("Unknown node type for REF_PRISTINE node at 0x%08x: 0x%04x\n",
				FUNC15(raw), FUNC1(node->u.nodetype));
			goto bail;
		}
	}

	/* OK, all the CRCs are good; this node can just be copied as-is. */
 retry:
	phys_ofs = FUNC18(c);

	ret = FUNC8(c, phys_ofs, rawlen, &retlen, (char *)node);

	if (ret || (retlen != rawlen)) {
		FUNC13("Write of %d bytes at 0x%08x failed. returned %d, retlen %zd\n",
			  rawlen, phys_ofs, ret, retlen);
		if (retlen) {
			FUNC3(c, phys_ofs | REF_OBSOLETE, rawlen, NULL);
		} else {
			FUNC13("Not marking the space at 0x%08x as dirty because the flash driver returned retlen zero\n",
				  phys_ofs);
		}
		if (!retried) {
			/* Try to reallocate space and retry */
			uint32_t dummy;
			struct jffs2_eraseblock *jeb = &c->blocks[phys_ofs / c->sector_size];

			retried = 1;

			FUNC4(1, "Retrying failed write of REF_PRISTINE node.\n");

			FUNC6(c,jeb);
			FUNC5(c, jeb);

			ret = FUNC10(c, rawlen, &dummy, rawlen);
						/* this is not the exact summary size of it,
							it is only an upper estimation */

			if (!ret) {
				FUNC4(1, "Allocated space at 0x%08x to retry failed write.\n",
					  phys_ofs);

				FUNC6(c,jeb);
				FUNC5(c, jeb);

				goto retry;
			}
			FUNC4(1, "Failed to allocate space to retry failed write: %d!\n",
				  ret);
		}

		if (!ret)
			ret = -EIO;
		goto out_node;
	}
	FUNC3(c, phys_ofs | REF_PRISTINE, rawlen, ic);

	FUNC9(c, raw);
	FUNC4(1, "WHEEE! GC REF_PRISTINE node at 0x%08x succeeded\n",
		  FUNC15(raw));

 out_node:
	FUNC11(node);
	return ret;
 bail:
	ret = -EBADFD;
	goto out_node;
}