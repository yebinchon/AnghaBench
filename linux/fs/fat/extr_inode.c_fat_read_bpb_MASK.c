#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  state; int /*<<< orphan*/  info_sector; int /*<<< orphan*/  root_cluster; int /*<<< orphan*/  length; } ;
struct TYPE_3__ {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  state; } ;
struct fat_boot_sector {int sec_per_clus; scalar_t__ media; TYPE_2__ fat32; TYPE_1__ fat16; int /*<<< orphan*/  total_sect; int /*<<< orphan*/  fat_length; int /*<<< orphan*/  sectors; int /*<<< orphan*/  dir_entries; int /*<<< orphan*/  fats; int /*<<< orphan*/  reserved; int /*<<< orphan*/  sector_size; } ;
struct fat_bios_param_block {int fat_sector_size; int fat_sec_per_clus; int /*<<< orphan*/  fat_fats; void* fat_reserved; void* fat32_vol_id; int /*<<< orphan*/  fat32_state; void* fat32_info_sector; void* fat32_root_cluster; void* fat32_length; void* fat16_vol_id; int /*<<< orphan*/  fat16_state; void* fat_total_sect; void* fat_fat_length; void* fat_sectors; void* fat_dir_entries; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fat_bios_param_block*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, struct fat_boot_sector *b,
	int silent, struct fat_bios_param_block *bpb)
{
	int error = -EINVAL;

	/* Read in BPB ... */
	FUNC7(bpb, 0, sizeof(*bpb));
	bpb->fat_sector_size = FUNC2(&b->sector_size);
	bpb->fat_sec_per_clus = b->sec_per_clus;
	bpb->fat_reserved = FUNC5(b->reserved);
	bpb->fat_fats = b->fats;
	bpb->fat_dir_entries = FUNC2(&b->dir_entries);
	bpb->fat_sectors = FUNC2(&b->sectors);
	bpb->fat_fat_length = FUNC5(b->fat_length);
	bpb->fat_total_sect = FUNC6(b->total_sect);

	bpb->fat16_state = b->fat16.state;
	bpb->fat16_vol_id = FUNC3(b->fat16.vol_id);

	bpb->fat32_length = FUNC6(b->fat32.length);
	bpb->fat32_root_cluster = FUNC6(b->fat32.root_cluster);
	bpb->fat32_info_sector = FUNC5(b->fat32.info_sector);
	bpb->fat32_state = b->fat32.state;
	bpb->fat32_vol_id = FUNC3(b->fat32.vol_id);

	/* Validate this looks like a FAT filesystem BPB */
	if (!bpb->fat_reserved) {
		if (!silent)
			FUNC0(sb, KERN_ERR,
				"bogus number of reserved sectors");
		goto out;
	}
	if (!bpb->fat_fats) {
		if (!silent)
			FUNC0(sb, KERN_ERR, "bogus number of FAT structure");
		goto out;
	}

	/*
	 * Earlier we checked here that b->secs_track and b->head are nonzero,
	 * but it turns out valid FAT filesystems can have zero there.
	 */

	if (!FUNC1(b->media)) {
		if (!silent)
			FUNC0(sb, KERN_ERR, "invalid media value (0x%02x)",
				(unsigned)b->media);
		goto out;
	}

	if (!FUNC4(bpb->fat_sector_size)
	    || (bpb->fat_sector_size < 512)
	    || (bpb->fat_sector_size > 4096)) {
		if (!silent)
			FUNC0(sb, KERN_ERR, "bogus logical sector size %u",
			       (unsigned)bpb->fat_sector_size);
		goto out;
	}

	if (!FUNC4(bpb->fat_sec_per_clus)) {
		if (!silent)
			FUNC0(sb, KERN_ERR, "bogus sectors per cluster %u",
				(unsigned)bpb->fat_sec_per_clus);
		goto out;
	}

	error = 0;

out:
	return error;
}