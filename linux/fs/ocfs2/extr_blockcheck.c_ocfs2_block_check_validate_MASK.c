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
struct ocfs2_blockcheck_stats {int dummy; } ;
struct ocfs2_block_check {int /*<<< orphan*/  bc_ecc; int /*<<< orphan*/  bc_crc32e; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_block_check*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_blockcheck_stats*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_blockcheck_stats*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_blockcheck_stats*) ; 
 scalar_t__ FUNC10 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (void*,size_t,scalar_t__) ; 

int FUNC12(void *data, size_t blocksize,
			       struct ocfs2_block_check *bc,
			       struct ocfs2_blockcheck_stats *stats)
{
	int rc = 0;
	u32 bc_crc32e;
	u16 bc_ecc;
	u32 crc, ecc;

	FUNC7(stats);

	bc_crc32e = FUNC4(bc->bc_crc32e);
	bc_ecc = FUNC3(bc->bc_ecc);

	FUNC5(bc, 0, sizeof(struct ocfs2_block_check));

	/* Fast path - if the crc32 validates, we're good to go */
	crc = FUNC2(~0, data, blocksize);
	if (crc == bc_crc32e)
		goto out;

	FUNC8(stats);
	FUNC6(ML_ERROR,
	     "CRC32 failed: stored: 0x%x, computed 0x%x. Applying ECC.\n",
	     (unsigned int)bc_crc32e, (unsigned int)crc);

	/* Ok, try ECC fixups */
	ecc = FUNC10(data, blocksize);
	FUNC11(data, blocksize, ecc ^ bc_ecc);

	/* And check the crc32 again */
	crc = FUNC2(~0, data, blocksize);
	if (crc == bc_crc32e) {
		FUNC9(stats);
		goto out;
	}

	FUNC6(ML_ERROR, "Fixed CRC32 failed: stored: 0x%x, computed 0x%x\n",
	     (unsigned int)bc_crc32e, (unsigned int)crc);

	rc = -EIO;

out:
	bc->bc_crc32e = FUNC1(bc_crc32e);
	bc->bc_ecc = FUNC0(bc_ecc);

	return rc;
}