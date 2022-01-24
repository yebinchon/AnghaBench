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
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_block_check {int /*<<< orphan*/  bc_ecc; int /*<<< orphan*/  bc_crc32e; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_block_check*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (void*,size_t) ; 

void FUNC6(void *data, size_t blocksize,
			       struct ocfs2_block_check *bc)
{
	u32 crc;
	u32 ecc;

	FUNC4(bc, 0, sizeof(struct ocfs2_block_check));

	crc = FUNC3(~0, data, blocksize);
	ecc = FUNC5(data, blocksize);

	/*
	 * No ecc'd ocfs2 structure is larger than 4K, so ecc will be no
	 * larger than 16 bits.
	 */
	FUNC0(ecc > USHRT_MAX);

	bc->bc_crc32e = FUNC2(crc);
	bc->bc_ecc = FUNC1((u16)ecc);
}