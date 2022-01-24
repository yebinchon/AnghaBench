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
typedef  int uint16_t ;
typedef  scalar_t__ u8 ;
struct tag {scalar_t__ tagIdent; scalar_t__ tagChecksum; scalar_t__ descVersion; scalar_t__ descCRCLength; scalar_t__ descCRC; int /*<<< orphan*/  tagLocation; } ;
struct super_block {int s_blocksize; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,int,int,...) ; 
 scalar_t__ FUNC7 (struct tag*) ; 
 struct buffer_head* FUNC8 (struct super_block*,int) ; 

struct buffer_head *FUNC9(struct super_block *sb, uint32_t block,
				    uint32_t location, uint16_t *ident)
{
	struct tag *tag_p;
	struct buffer_head *bh = NULL;
	u8 checksum;

	/* Read the block */
	if (block == 0xFFFFFFFF)
		return NULL;

	bh = FUNC8(sb, block);
	if (!bh) {
		FUNC6(sb, "read failed, block=%u, location=%u\n",
			block, location);
		return NULL;
	}

	tag_p = (struct tag *)(bh->b_data);

	*ident = FUNC3(tag_p->tagIdent);

	if (location != FUNC4(tag_p->tagLocation)) {
		FUNC5("location mismatch block %u, tag %u != %u\n",
			  block, FUNC4(tag_p->tagLocation), location);
		goto error_out;
	}

	/* Verify the tag checksum */
	checksum = FUNC7(tag_p);
	if (checksum != tag_p->tagChecksum) {
		FUNC6(sb, "tag checksum failed, block %u: 0x%02x != 0x%02x\n",
			block, checksum, tag_p->tagChecksum);
		goto error_out;
	}

	/* Verify the tag version */
	if (tag_p->descVersion != FUNC1(0x0002U) &&
	    tag_p->descVersion != FUNC1(0x0003U)) {
		FUNC6(sb, "tag version 0x%04x != 0x0002 || 0x0003, block %u\n",
			FUNC3(tag_p->descVersion), block);
		goto error_out;
	}

	/* Verify the descriptor CRC */
	if (FUNC3(tag_p->descCRCLength) + sizeof(struct tag) > sb->s_blocksize ||
	    FUNC3(tag_p->descCRC) == FUNC2(0,
					bh->b_data + sizeof(struct tag),
					FUNC3(tag_p->descCRCLength)))
		return bh;

	FUNC5("Crc failure block %u: crc = %u, crclen = %u\n", block,
		  FUNC3(tag_p->descCRC),
		  FUNC3(tag_p->descCRCLength));
error_out:
	FUNC0(bh);
	return NULL;
}