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
struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int sector_t ;
struct TYPE_2__ {int nr_blocks; int on_errors; } ;
typedef  int /*<<< orphan*/  NTFS_BOOT_SECTOR ;

/* Variables and functions */
 int /*<<< orphan*/  NTFS_BLOCK_SIZE ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int ON_ERRORS_RECOVER ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*) ; 
 struct buffer_head* FUNC8 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC11(struct super_block *sb,
		const int silent)
{
	const char *read_err_str = "Unable to read %s boot sector.";
	struct buffer_head *bh_primary, *bh_backup;
	sector_t nr_blocks = FUNC0(sb)->nr_blocks;

	/* Try to read primary boot sector. */
	if ((bh_primary = FUNC8(sb, 0))) {
		if (FUNC3(sb, (NTFS_BOOT_SECTOR*)
				bh_primary->b_data, silent))
			return bh_primary;
		if (!silent)
			FUNC6(sb, "Primary boot sector is invalid.");
	} else if (!silent)
		FUNC6(sb, read_err_str, "primary");
	if (!(FUNC0(sb)->on_errors & ON_ERRORS_RECOVER)) {
		if (bh_primary)
			FUNC1(bh_primary);
		if (!silent)
			FUNC6(sb, "Mount option errors=recover not used. "
					"Aborting without trying to recover.");
		return NULL;
	}
	/* Try to read NT4+ backup boot sector. */
	if ((bh_backup = FUNC8(sb, nr_blocks - 1))) {
		if (FUNC3(sb, (NTFS_BOOT_SECTOR*)
				bh_backup->b_data, silent))
			goto hotfix_primary_boot_sector;
		FUNC1(bh_backup);
	} else if (!silent)
		FUNC6(sb, read_err_str, "backup");
	/* Try to read NT3.51- backup boot sector. */
	if ((bh_backup = FUNC8(sb, nr_blocks >> 1))) {
		if (FUNC3(sb, (NTFS_BOOT_SECTOR*)
				bh_backup->b_data, silent))
			goto hotfix_primary_boot_sector;
		if (!silent)
			FUNC6(sb, "Could not find a valid backup boot "
					"sector.");
		FUNC1(bh_backup);
	} else if (!silent)
		FUNC6(sb, read_err_str, "backup");
	/* We failed. Cleanup and return. */
	if (bh_primary)
		FUNC1(bh_primary);
	return NULL;
hotfix_primary_boot_sector:
	if (bh_primary) {
		/*
		 * If we managed to read sector zero and the volume is not
		 * read-only, copy the found, valid backup boot sector to the
		 * primary boot sector.  Note we only copy the actual boot
		 * sector structure, not the actual whole device sector as that
		 * may be bigger and would potentially damage the $Boot system
		 * file (FIXME: Would be nice to know if the backup boot sector
		 * on a large sector device contains the whole boot loader or
		 * just the first 512 bytes).
		 */
		if (!FUNC9(sb)) {
			FUNC7(sb, "Hot-fix: Recovering invalid primary "
					"boot sector from backup copy.");
			FUNC5(bh_primary->b_data, bh_backup->b_data,
					NTFS_BLOCK_SIZE);
			FUNC4(bh_primary);
			FUNC10(bh_primary);
			if (FUNC2(bh_primary)) {
				FUNC1(bh_backup);
				return bh_primary;
			}
			FUNC6(sb, "Hot-fix: Device write error while "
					"recovering primary boot sector.");
		} else {
			FUNC7(sb, "Hot-fix: Recovery of primary boot "
					"sector failed: Read-only mount.");
		}
		FUNC1(bh_primary);
	}
	FUNC7(sb, "Using backup boot sector.");
	return bh_backup;
}