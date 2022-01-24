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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct ubifs_info {int lsave_cnt; int lsave_sz; int /*<<< orphan*/  lnum_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_LPT_CRC_BITS ; 
 int UBIFS_LPT_CRC_BYTES ; 
 int UBIFS_LPT_LSAVE ; 
 int /*<<< orphan*/  UBIFS_LPT_TYPE_BITS ; 
 int FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int /*<<< orphan*/ **,int*,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct ubifs_info *c, void *buf, int *lsave)
{
	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
	int i, pos = 0;
	uint16_t crc;

	FUNC1(c, &addr, &pos, UBIFS_LPT_LSAVE, UBIFS_LPT_TYPE_BITS);
	for (i = 0; i < c->lsave_cnt; i++)
		FUNC1(c, &addr, &pos, lsave[i], c->lnum_bits);
	crc = FUNC0(-1, buf + UBIFS_LPT_CRC_BYTES,
		    c->lsave_sz - UBIFS_LPT_CRC_BYTES);
	addr = buf;
	pos = 0;
	FUNC1(c, &addr, &pos, crc, UBIFS_LPT_CRC_BITS);
}