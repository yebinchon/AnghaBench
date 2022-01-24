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
typedef  void* uint32_t ;
struct ubifs_zbranch {int len; int lnum; int offs; int /*<<< orphan*/  hash; } ;
struct ubifs_info {scalar_t__ remounting_rw; scalar_t__ mounting; int /*<<< orphan*/  no_chk_data_crc; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  crc; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_CRC32_INIT ; 
 int UBIFS_DATA_NODE ; 
 void* UBIFS_NODE_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info const*,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info const*,char*,int,int,int,int) ; 
 int FUNC6 (struct ubifs_info const*,int,void*,int,int,int) ; 
 int FUNC7 (struct ubifs_info const*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct ubifs_info *c, void *buf, int type,
			 struct ubifs_zbranch *zbr)
{
	int len = zbr->len;
	int lnum = zbr->lnum;
	int offs = zbr->offs;
	int err, node_len;
	struct ubifs_ch *ch = buf;
	uint32_t crc, node_crc;

	FUNC1("LEB %d:%d, %s, length %d", lnum, offs, FUNC2(type), len);

	err = FUNC6(c, lnum, buf, offs, len, 1);
	if (err) {
		FUNC5(c, "cannot read node type %d from LEB %d:%d, error %d",
			  type, lnum, offs, err);
		return err;
	}

	if (FUNC3(ch->magic) != UBIFS_NODE_MAGIC)
		return 0;

	if (ch->node_type != type)
		return 0;

	node_len = FUNC3(ch->len);
	if (node_len != len)
		return 0;

	if (type != UBIFS_DATA_NODE || !c->no_chk_data_crc || c->mounting ||
	    c->remounting_rw) {
		crc = FUNC0(UBIFS_CRC32_INIT, buf + 8, node_len - 8);
		node_crc = FUNC3(ch->crc);
		if (crc != node_crc)
			return 0;
	}

	err = FUNC7(c, buf, zbr->hash);
	if (err) {
		FUNC4(c, buf, zbr->hash, lnum, offs);
		return 0;
	}

	return 1;
}