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
typedef  int u64 ;
typedef  int u32 ;
struct inode {int i_blkbits; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {size_t p_depth; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  desc_size_disk ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_ext_path*) ; 
 int FUNC4 (struct ext4_extent*) ; 
 struct ext4_ext_path* FUNC5 (struct inode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ext4_ext_path*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
					       size_t *desc_size_ret,
					       u64 *desc_pos_ret)
{
	struct ext4_ext_path *path;
	struct ext4_extent *last_extent;
	u32 end_lblk;
	u64 desc_size_pos;
	__le32 desc_size_disk;
	u32 desc_size;
	u64 desc_pos;
	int err;

	/*
	 * Descriptor size is in last 4 bytes of last allocated block.
	 * See ext4_write_verity_descriptor().
	 */

	if (!FUNC6(inode, EXT4_INODE_EXTENTS)) {
		FUNC0(inode, "verity file doesn't use extents");
		return -EFSCORRUPTED;
	}

	path = FUNC5(inode, EXT_MAX_BLOCKS - 1, NULL, 0);
	if (FUNC1(path))
		return FUNC2(path);

	last_extent = path[path->p_depth].p_ext;
	if (!last_extent) {
		FUNC0(inode, "verity file has no extents");
		FUNC3(path);
		FUNC9(path);
		return -EFSCORRUPTED;
	}

	end_lblk = FUNC10(last_extent->ee_block) +
		   FUNC4(last_extent);
	desc_size_pos = (u64)end_lblk << inode->i_blkbits;
	FUNC3(path);
	FUNC9(path);

	if (desc_size_pos < sizeof(desc_size_disk))
		goto bad;
	desc_size_pos -= sizeof(desc_size_disk);

	err = FUNC11(inode, &desc_size_disk, sizeof(desc_size_disk),
			     desc_size_pos);
	if (err)
		return err;
	desc_size = FUNC10(desc_size_disk);

	/*
	 * The descriptor is stored just before the desc_size_disk, but starting
	 * on a filesystem block boundary.
	 */

	if (desc_size > INT_MAX || desc_size > desc_size_pos)
		goto bad;

	desc_pos = FUNC12(desc_size_pos - desc_size, FUNC8(inode));
	if (desc_pos < FUNC7(inode))
		goto bad;

	*desc_size_ret = desc_size;
	*desc_pos_ret = desc_pos;
	return 0;

bad:
	FUNC0(inode, "verity file corrupted; can't find descriptor");
	return -EFSCORRUPTED;
}