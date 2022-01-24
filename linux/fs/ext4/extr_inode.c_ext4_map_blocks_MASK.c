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
struct inode {int i_blkbits; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct extent_status {int es_lblk; int es_len; } ;
struct ext4_map_blocks {int m_flags; int m_len; scalar_t__ m_lblk; int m_pblk; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EFSCORRUPTED ; 
 int EXT4_GET_BLOCKS_CONVERT_UNWRITTEN ; 
 int EXT4_GET_BLOCKS_CREATE ; 
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ; 
 int EXT4_GET_BLOCKS_IO_SUBMIT ; 
 int EXT4_GET_BLOCKS_KEEP_SIZE ; 
 int EXT4_GET_BLOCKS_PRE_IO ; 
 int EXT4_GET_BLOCKS_ZERO ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int EXT4_MAP_FLAGS ; 
 int EXT4_MAP_MAPPED ; 
 int EXT4_MAP_NEW ; 
 int EXT4_MAP_UNWRITTEN ; 
 int /*<<< orphan*/  EXT4_STATE_EXT_MIGRATE ; 
 unsigned int EXTENT_STATUS_DELAYED ; 
 unsigned int EXTENT_STATUS_UNWRITTEN ; 
 unsigned int EXTENT_STATUS_WRITTEN ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct ext4_map_blocks*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,int) ; 
 int FUNC8 (struct inode*,int,int,int,unsigned int) ; 
 scalar_t__ FUNC9 (struct extent_status*) ; 
 scalar_t__ FUNC10 (struct extent_status*) ; 
 scalar_t__ FUNC11 (struct extent_status*) ; 
 scalar_t__ FUNC12 (struct extent_status*) ; 
 scalar_t__ FUNC13 (struct inode*,scalar_t__,int /*<<< orphan*/ *,struct extent_status*) ; 
 int FUNC14 (struct extent_status*) ; 
 scalar_t__ FUNC15 (struct inode*,scalar_t__ (*) (struct extent_status*),int,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int FUNC19 (struct inode*,int,int,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,struct ext4_map_blocks*,int) ; 
 scalar_t__ FUNC23 (struct inode*) ; 
 scalar_t__ FUNC24 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (struct ext4_map_blocks*,struct ext4_map_blocks*,int) ; 
 scalar_t__ FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

int FUNC31(handle_t *handle, struct inode *inode,
		    struct ext4_map_blocks *map, int flags)
{
	struct extent_status es;
	int retval;
	int ret = 0;
#ifdef ES_AGGRESSIVE_TEST
	struct ext4_map_blocks orig_map;

	memcpy(&orig_map, map, sizeof(*map));
#endif

	map->m_flags = 0;
	FUNC26("ext4_map_blocks(): inode %lu, flag %d, max_blocks %u,"
		  "logical block %lu\n", inode->i_ino, flags, map->m_len,
		  (unsigned long) map->m_lblk);

	/*
	 * ext4_map_blocks returns an int, and m_len is an unsigned int
	 */
	if (FUNC28(map->m_len > INT_MAX))
		map->m_len = INT_MAX;

	/* We can handle the block number less than EXT_MAX_BLOCKS */
	if (FUNC28(map->m_lblk >= EXT_MAX_BLOCKS))
		return -EFSCORRUPTED;

	/* Lookup extent status tree firstly */
	if (FUNC13(inode, map->m_lblk, NULL, &es)) {
		if (FUNC12(&es) || FUNC11(&es)) {
			map->m_pblk = FUNC14(&es) +
					map->m_lblk - es.es_lblk;
			map->m_flags |= FUNC12(&es) ?
					EXT4_MAP_MAPPED : EXT4_MAP_UNWRITTEN;
			retval = es.es_len - (map->m_lblk - es.es_lblk);
			if (retval > map->m_len)
				retval = map->m_len;
			map->m_len = retval;
		} else if (FUNC9(&es) || FUNC10(&es)) {
			map->m_pblk = 0;
			retval = es.es_len - (map->m_lblk - es.es_lblk);
			if (retval > map->m_len)
				retval = map->m_len;
			map->m_len = retval;
			retval = 0;
		} else {
			FUNC0();
		}
#ifdef ES_AGGRESSIVE_TEST
		ext4_map_blocks_es_recheck(handle, inode, map,
					   &orig_map, flags);
#endif
		goto found;
	}

	/*
	 * Try to see if we can get the block without requesting a new
	 * file system block.
	 */
	FUNC4(&FUNC1(inode)->i_data_sem);
	if (FUNC24(inode, EXT4_INODE_EXTENTS)) {
		retval = FUNC16(handle, inode, map, flags &
					     EXT4_GET_BLOCKS_KEEP_SIZE);
	} else {
		retval = FUNC17(handle, inode, map, flags &
					     EXT4_GET_BLOCKS_KEEP_SIZE);
	}
	if (retval > 0) {
		unsigned int status;

		if (FUNC28(retval != map->m_len)) {
			FUNC25(inode->i_sb,
				     "ES len assertion failed for inode "
				     "%lu: retval %d != map->m_len %d",
				     inode->i_ino, retval, map->m_len);
			FUNC2(1);
		}

		status = map->m_flags & EXT4_MAP_UNWRITTEN ?
				EXTENT_STATUS_UNWRITTEN : EXTENT_STATUS_WRITTEN;
		if (!(flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE) &&
		    !(status & EXTENT_STATUS_WRITTEN) &&
		    FUNC15(inode, &ext4_es_is_delayed, map->m_lblk,
				       map->m_lblk + map->m_len - 1))
			status |= EXTENT_STATUS_DELAYED;
		ret = FUNC8(inode, map->m_lblk,
					    map->m_len, map->m_pblk, status);
		if (ret < 0)
			retval = ret;
	}
	FUNC29((&FUNC1(inode)->i_data_sem));

found:
	if (retval > 0 && map->m_flags & EXT4_MAP_MAPPED) {
		ret = FUNC3(inode, map);
		if (ret != 0)
			return ret;
	}

	/* If it is only a block(s) look up */
	if ((flags & EXT4_GET_BLOCKS_CREATE) == 0)
		return retval;

	/*
	 * Returns if the blocks have already allocated
	 *
	 * Note that if blocks have been preallocated
	 * ext4_ext_get_block() returns the create = 0
	 * with buffer head unmapped.
	 */
	if (retval > 0 && map->m_flags & EXT4_MAP_MAPPED)
		/*
		 * If we need to convert extent to unwritten
		 * we continue and do the actual work in
		 * ext4_ext_map_blocks()
		 */
		if (!(flags & EXT4_GET_BLOCKS_CONVERT_UNWRITTEN))
			return retval;

	/*
	 * Here we clear m_flags because after allocating an new extent,
	 * it will be set again.
	 */
	map->m_flags &= ~EXT4_MAP_FLAGS;

	/*
	 * New blocks allocate and/or writing to unwritten extent
	 * will possibly result in updating i_data, so we take
	 * the write lock of i_data_sem, and call get_block()
	 * with create == 1 flag.
	 */
	FUNC5(&FUNC1(inode)->i_data_sem);

	/*
	 * We need to check for EXT4 here because migrate
	 * could have changed the inode type in between
	 */
	if (FUNC24(inode, EXT4_INODE_EXTENTS)) {
		retval = FUNC16(handle, inode, map, flags);
	} else {
		retval = FUNC17(handle, inode, map, flags);

		if (retval > 0 && map->m_flags & EXT4_MAP_NEW) {
			/*
			 * We allocated new blocks which will result in
			 * i_data's format changing.  Force the migrate
			 * to fail by clearing migrate flags
			 */
			FUNC6(inode, EXT4_STATE_EXT_MIGRATE);
		}

		/*
		 * Update reserved blocks/metadata blocks after successful
		 * block allocation which had been deferred till now. We don't
		 * support fallocate for non extent files. So we can update
		 * reserve space here.
		 */
		if ((retval > 0) &&
			(flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE))
			FUNC7(inode, retval, 1);
	}

	if (retval > 0) {
		unsigned int status;

		if (FUNC28(retval != map->m_len)) {
			FUNC25(inode->i_sb,
				     "ES len assertion failed for inode "
				     "%lu: retval %d != map->m_len %d",
				     inode->i_ino, retval, map->m_len);
			FUNC2(1);
		}

		/*
		 * We have to zeroout blocks before inserting them into extent
		 * status tree. Otherwise someone could look them up there and
		 * use them before they are really zeroed. We also have to
		 * unmap metadata before zeroing as otherwise writeback can
		 * overwrite zeros with stale data from block device.
		 */
		if (flags & EXT4_GET_BLOCKS_ZERO &&
		    map->m_flags & EXT4_MAP_MAPPED &&
		    map->m_flags & EXT4_MAP_NEW) {
			ret = FUNC19(inode, map->m_lblk,
						 map->m_pblk, map->m_len);
			if (ret) {
				retval = ret;
				goto out_sem;
			}
		}

		/*
		 * If the extent has been zeroed out, we don't need to update
		 * extent status tree.
		 */
		if ((flags & EXT4_GET_BLOCKS_PRE_IO) &&
		    FUNC13(inode, map->m_lblk, NULL, &es)) {
			if (FUNC12(&es))
				goto out_sem;
		}
		status = map->m_flags & EXT4_MAP_UNWRITTEN ?
				EXTENT_STATUS_UNWRITTEN : EXTENT_STATUS_WRITTEN;
		if (!(flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE) &&
		    !(status & EXTENT_STATUS_WRITTEN) &&
		    FUNC15(inode, &ext4_es_is_delayed, map->m_lblk,
				       map->m_lblk + map->m_len - 1))
			status |= EXTENT_STATUS_DELAYED;
		ret = FUNC8(inode, map->m_lblk, map->m_len,
					    map->m_pblk, status);
		if (ret < 0) {
			retval = ret;
			goto out_sem;
		}
	}

out_sem:
	FUNC30((&FUNC1(inode)->i_data_sem));
	if (retval > 0 && map->m_flags & EXT4_MAP_MAPPED) {
		ret = FUNC3(inode, map);
		if (ret != 0)
			return ret;

		/*
		 * Inodes with freshly allocated blocks where contents will be
		 * visible after transaction commit must be on transaction's
		 * ordered data list.
		 */
		if (map->m_flags & EXT4_MAP_NEW &&
		    !(map->m_flags & EXT4_MAP_UNWRITTEN) &&
		    !(flags & EXT4_GET_BLOCKS_ZERO) &&
		    !FUNC18(inode) &&
		    FUNC23(inode)) {
			loff_t start_byte =
				(loff_t)map->m_lblk << inode->i_blkbits;
			loff_t length = (loff_t)map->m_len << inode->i_blkbits;

			if (flags & EXT4_GET_BLOCKS_IO_SUBMIT)
				ret = FUNC20(handle, inode,
						start_byte, length);
			else
				ret = FUNC21(handle, inode,
						start_byte, length);
			if (ret)
				return ret;
		}
	}
	return retval;
}