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
struct ubifs_pad_node {int /*<<< orphan*/  pad_len; } ;
struct ubifs_info {int leb_size; } ;
struct ubifs_ch {scalar_t__ node_type; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SCANNED_A_BAD_PAD_NODE ; 
 int SCANNED_A_CORRUPT_NODE ; 
 int SCANNED_A_NODE ; 
 int SCANNED_EMPTY_SPACE ; 
 int SCANNED_GARBAGE ; 
 int UBIFS_CH_SZ ; 
 int UBIFS_NODE_MAGIC ; 
 scalar_t__ UBIFS_PAD_NODE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,int) ; 
 scalar_t__ FUNC5 (struct ubifs_info const*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info const*,struct ubifs_pad_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info const*,char*,int,int) ; 

int FUNC8(const struct ubifs_info *c, void *buf, int len, int lnum,
		      int offs, int quiet)
{
	struct ubifs_ch *ch = buf;
	uint32_t magic;

	magic = FUNC3(ch->magic);

	if (magic == 0xFFFFFFFF) {
		FUNC2("hit empty space at LEB %d:%d", lnum, offs);
		return SCANNED_EMPTY_SPACE;
	}

	if (magic != UBIFS_NODE_MAGIC)
		return FUNC4(buf, len);

	if (len < UBIFS_CH_SZ)
		return SCANNED_GARBAGE;

	FUNC2("scanning %s at LEB %d:%d",
		 FUNC1(ch->node_type), lnum, offs);

	if (FUNC5(c, buf, lnum, offs, quiet, 1))
		return SCANNED_A_CORRUPT_NODE;

	if (ch->node_type == UBIFS_PAD_NODE) {
		struct ubifs_pad_node *pad = buf;
		int pad_len = FUNC3(pad->pad_len);
		int node_len = FUNC3(ch->len);

		/* Validate the padding node */
		if (pad_len < 0 ||
		    offs + node_len + pad_len > c->leb_size) {
			if (!quiet) {
				FUNC7(c, "bad pad node at LEB %d:%d",
					  lnum, offs);
				FUNC6(c, pad);
			}
			return SCANNED_A_BAD_PAD_NODE;
		}

		/* Make the node pads to 8-byte boundary */
		if ((node_len + pad_len) & 7) {
			if (!quiet)
				FUNC7(c, "bad padding length %d - %d",
					  offs, offs + node_len + pad_len);
			return SCANNED_A_BAD_PAD_NODE;
		}

		FUNC2("%d bytes padded at LEB %d:%d, offset now %d", pad_len,
			 lnum, offs, FUNC0(offs + node_len + pad_len, 8));

		return node_len + pad_len;
	}

	return SCANNED_A_NODE;
}