#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  unsigned long long s64 ;
struct TYPE_8__ {int sector_size; int sector_size_bits; unsigned int cluster_size; int cluster_size_mask; int cluster_size_bits; int mft_record_size; int mft_record_size_mask; int mft_record_size_bits; int index_record_size; int index_record_size_mask; int index_record_size_bits; unsigned long long nr_clusters; unsigned long long mft_lcn; unsigned long long mftmirr_lcn; int mftmirr_size; scalar_t__ serial_no; TYPE_6__* sb; } ;
typedef  TYPE_2__ ntfs_volume ;
struct TYPE_10__ {int s_blocksize; } ;
struct TYPE_7__ {unsigned long long sectors_per_cluster; int /*<<< orphan*/  hidden_sectors; int /*<<< orphan*/  bytes_per_sector; } ;
struct TYPE_9__ {int clusters_per_mft_record; int clusters_per_index_record; int /*<<< orphan*/  volume_serial_number; int /*<<< orphan*/  mftmirr_lcn; int /*<<< orphan*/  mft_lcn; int /*<<< orphan*/  number_of_sectors; TYPE_1__ bpb; } ;
typedef  TYPE_3__ NTFS_BOOT_SECTOR ;

/* Variables and functions */
 unsigned long long PAGE_SIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*,...) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(ntfs_volume *vol, const NTFS_BOOT_SECTOR *b)
{
	unsigned int sectors_per_cluster_bits, nr_hidden_sects;
	int clusters_per_mft_record, clusters_per_index_record;
	s64 ll;

	vol->sector_size = FUNC1(b->bpb.bytes_per_sector);
	vol->sector_size_bits = FUNC0(vol->sector_size) - 1;
	FUNC4("vol->sector_size = %i (0x%x)", vol->sector_size,
			vol->sector_size);
	FUNC4("vol->sector_size_bits = %i (0x%x)", vol->sector_size_bits,
			vol->sector_size_bits);
	if (vol->sector_size < vol->sb->s_blocksize) {
		FUNC5(vol->sb, "Sector size (%i) is smaller than the "
				"device block size (%lu).  This is not "
				"supported.  Sorry.", vol->sector_size,
				vol->sb->s_blocksize);
		return false;
	}
	FUNC4("sectors_per_cluster = 0x%x", b->bpb.sectors_per_cluster);
	sectors_per_cluster_bits = FUNC0(b->bpb.sectors_per_cluster) - 1;
	FUNC4("sectors_per_cluster_bits = 0x%x",
			sectors_per_cluster_bits);
	nr_hidden_sects = FUNC2(b->bpb.hidden_sectors);
	FUNC4("number of hidden sectors = 0x%x", nr_hidden_sects);
	vol->cluster_size = vol->sector_size << sectors_per_cluster_bits;
	vol->cluster_size_mask = vol->cluster_size - 1;
	vol->cluster_size_bits = FUNC0(vol->cluster_size) - 1;
	FUNC4("vol->cluster_size = %i (0x%x)", vol->cluster_size,
			vol->cluster_size);
	FUNC4("vol->cluster_size_mask = 0x%x", vol->cluster_size_mask);
	FUNC4("vol->cluster_size_bits = %i", vol->cluster_size_bits);
	if (vol->cluster_size < vol->sector_size) {
		FUNC5(vol->sb, "Cluster size (%i) is smaller than the "
				"sector size (%i).  This is not supported.  "
				"Sorry.", vol->cluster_size, vol->sector_size);
		return false;
	}
	clusters_per_mft_record = b->clusters_per_mft_record;
	FUNC4("clusters_per_mft_record = %i (0x%x)",
			clusters_per_mft_record, clusters_per_mft_record);
	if (clusters_per_mft_record > 0)
		vol->mft_record_size = vol->cluster_size <<
				(FUNC0(clusters_per_mft_record) - 1);
	else
		/*
		 * When mft_record_size < cluster_size, clusters_per_mft_record
		 * = -log2(mft_record_size) bytes. mft_record_size normaly is
		 * 1024 bytes, which is encoded as 0xF6 (-10 in decimal).
		 */
		vol->mft_record_size = 1 << -clusters_per_mft_record;
	vol->mft_record_size_mask = vol->mft_record_size - 1;
	vol->mft_record_size_bits = FUNC0(vol->mft_record_size) - 1;
	FUNC4("vol->mft_record_size = %i (0x%x)", vol->mft_record_size,
			vol->mft_record_size);
	FUNC4("vol->mft_record_size_mask = 0x%x",
			vol->mft_record_size_mask);
	FUNC4("vol->mft_record_size_bits = %i (0x%x)",
			vol->mft_record_size_bits, vol->mft_record_size_bits);
	/*
	 * We cannot support mft record sizes above the PAGE_SIZE since
	 * we store $MFT/$DATA, the table of mft records in the page cache.
	 */
	if (vol->mft_record_size > PAGE_SIZE) {
		FUNC5(vol->sb, "Mft record size (%i) exceeds the "
				"PAGE_SIZE on your system (%lu).  "
				"This is not supported.  Sorry.",
				vol->mft_record_size, PAGE_SIZE);
		return false;
	}
	/* We cannot support mft record sizes below the sector size. */
	if (vol->mft_record_size < vol->sector_size) {
		FUNC5(vol->sb, "Mft record size (%i) is smaller than the "
				"sector size (%i).  This is not supported.  "
				"Sorry.", vol->mft_record_size,
				vol->sector_size);
		return false;
	}
	clusters_per_index_record = b->clusters_per_index_record;
	FUNC4("clusters_per_index_record = %i (0x%x)",
			clusters_per_index_record, clusters_per_index_record);
	if (clusters_per_index_record > 0)
		vol->index_record_size = vol->cluster_size <<
				(FUNC0(clusters_per_index_record) - 1);
	else
		/*
		 * When index_record_size < cluster_size,
		 * clusters_per_index_record = -log2(index_record_size) bytes.
		 * index_record_size normaly equals 4096 bytes, which is
		 * encoded as 0xF4 (-12 in decimal).
		 */
		vol->index_record_size = 1 << -clusters_per_index_record;
	vol->index_record_size_mask = vol->index_record_size - 1;
	vol->index_record_size_bits = FUNC0(vol->index_record_size) - 1;
	FUNC4("vol->index_record_size = %i (0x%x)",
			vol->index_record_size, vol->index_record_size);
	FUNC4("vol->index_record_size_mask = 0x%x",
			vol->index_record_size_mask);
	FUNC4("vol->index_record_size_bits = %i (0x%x)",
			vol->index_record_size_bits,
			vol->index_record_size_bits);
	/* We cannot support index record sizes below the sector size. */
	if (vol->index_record_size < vol->sector_size) {
		FUNC5(vol->sb, "Index record size (%i) is smaller than "
				"the sector size (%i).  This is not "
				"supported.  Sorry.", vol->index_record_size,
				vol->sector_size);
		return false;
	}
	/*
	 * Get the size of the volume in clusters and check for 64-bit-ness.
	 * Windows currently only uses 32 bits to save the clusters so we do
	 * the same as it is much faster on 32-bit CPUs.
	 */
	ll = FUNC6(b->number_of_sectors) >> sectors_per_cluster_bits;
	if ((u64)ll >= 1ULL << 32) {
		FUNC5(vol->sb, "Cannot handle 64-bit clusters.  Sorry.");
		return false;
	}
	vol->nr_clusters = ll;
	FUNC4("vol->nr_clusters = 0x%llx", (long long)vol->nr_clusters);
	/*
	 * On an architecture where unsigned long is 32-bits, we restrict the
	 * volume size to 2TiB (2^41). On a 64-bit architecture, the compiler
	 * will hopefully optimize the whole check away.
	 */
	if (sizeof(unsigned long) < 8) {
		if ((ll << vol->cluster_size_bits) >= (1ULL << 41)) {
			FUNC5(vol->sb, "Volume size (%lluTiB) is too "
					"large for this architecture.  "
					"Maximum supported is 2TiB.  Sorry.",
					(unsigned long long)ll >> (40 -
					vol->cluster_size_bits));
			return false;
		}
	}
	ll = FUNC6(b->mft_lcn);
	if (ll >= vol->nr_clusters) {
		FUNC5(vol->sb, "MFT LCN (%lli, 0x%llx) is beyond end of "
				"volume.  Weird.", (unsigned long long)ll,
				(unsigned long long)ll);
		return false;
	}
	vol->mft_lcn = ll;
	FUNC4("vol->mft_lcn = 0x%llx", (long long)vol->mft_lcn);
	ll = FUNC6(b->mftmirr_lcn);
	if (ll >= vol->nr_clusters) {
		FUNC5(vol->sb, "MFTMirr LCN (%lli, 0x%llx) is beyond end "
				"of volume.  Weird.", (unsigned long long)ll,
				(unsigned long long)ll);
		return false;
	}
	vol->mftmirr_lcn = ll;
	FUNC4("vol->mftmirr_lcn = 0x%llx", (long long)vol->mftmirr_lcn);
#ifdef NTFS_RW
	/*
	 * Work out the size of the mft mirror in number of mft records. If the
	 * cluster size is less than or equal to the size taken by four mft
	 * records, the mft mirror stores the first four mft records. If the
	 * cluster size is bigger than the size taken by four mft records, the
	 * mft mirror contains as many mft records as will fit into one
	 * cluster.
	 */
	if (vol->cluster_size <= (4 << vol->mft_record_size_bits))
		vol->mftmirr_size = 4;
	else
		vol->mftmirr_size = vol->cluster_size >>
				vol->mft_record_size_bits;
	ntfs_debug("vol->mftmirr_size = %i", vol->mftmirr_size);
#endif /* NTFS_RW */
	vol->serial_no = FUNC3(b->volume_serial_number);
	FUNC4("vol->serial_no = 0x%llx",
			(unsigned long long)vol->serial_no);
	return true;
}