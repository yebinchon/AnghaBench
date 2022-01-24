#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct ubifs_nnode {TYPE_1__* nbranch; scalar_t__ num; } ;
struct ubifs_info {int lpt_last; int nnode_sz; int /*<<< orphan*/  lpt_offs_bits; int /*<<< orphan*/  lpt_lnum_bits; scalar_t__ lpt_first; int /*<<< orphan*/  pcnt_bits; scalar_t__ big_lpt; } ;
struct TYPE_2__ {int lnum; scalar_t__ offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_LPT_CRC_BITS ; 
 int UBIFS_LPT_CRC_BYTES ; 
 int UBIFS_LPT_FANOUT ; 
 scalar_t__ UBIFS_LPT_NNODE ; 
 int /*<<< orphan*/  UBIFS_LPT_TYPE_BITS ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int /*<<< orphan*/ **,int*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct ubifs_info *c, void *buf,
		      struct ubifs_nnode *nnode)
{
	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
	int i, pos = 0;
	uint16_t crc;

	FUNC1(c, &addr, &pos, UBIFS_LPT_NNODE, UBIFS_LPT_TYPE_BITS);
	if (c->big_lpt)
		FUNC1(c, &addr, &pos, nnode->num, c->pcnt_bits);
	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
		int lnum = nnode->nbranch[i].lnum;

		if (lnum == 0)
			lnum = c->lpt_last + 1;
		FUNC1(c, &addr, &pos, lnum - c->lpt_first, c->lpt_lnum_bits);
		FUNC1(c, &addr, &pos, nnode->nbranch[i].offs,
			  c->lpt_offs_bits);
	}
	crc = FUNC0(-1, buf + UBIFS_LPT_CRC_BYTES,
		    c->nnode_sz - UBIFS_LPT_CRC_BYTES);
	addr = buf;
	pos = 0;
	FUNC1(c, &addr, &pos, crc, UBIFS_LPT_CRC_BITS);
}