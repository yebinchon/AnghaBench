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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ocfs2_block_check {int /*<<< orphan*/  bc_ecc; int /*<<< orphan*/  bc_crc32e; } ;
struct buffer_head {int b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_block_check*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(struct buffer_head **bhs, int nr,
				   struct ocfs2_block_check *bc)
{
	int i;
	u32 crc, ecc;

	FUNC0(nr < 0);

	if (!nr)
		return;

	FUNC4(bc, 0, sizeof(struct ocfs2_block_check));

	for (i = 0, crc = ~0, ecc = 0; i < nr; i++) {
		crc = FUNC3(crc, bhs[i]->b_data, bhs[i]->b_size);
		/*
		 * The number of bits in a buffer is obviously b_size*8.
		 * The offset of this buffer is b_size*i, so the bit offset
		 * of this buffer is b_size*8*i.
		 */
		ecc = (u16)FUNC5(ecc, bhs[i]->b_data,
						bhs[i]->b_size * 8,
						bhs[i]->b_size * 8 * i);
	}

	/*
	 * No ecc'd ocfs2 structure is larger than 4K, so ecc will be no
	 * larger than 16 bits.
	 */
	FUNC0(ecc > USHRT_MAX);

	bc->bc_crc32e = FUNC2(crc);
	bc->bc_ecc = FUNC1((u16)ecc);
}