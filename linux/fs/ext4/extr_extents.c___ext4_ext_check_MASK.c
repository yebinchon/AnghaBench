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
struct inode {int dummy; } ;
struct ext4_extent_header {scalar_t__ eh_magic; scalar_t__ eh_depth; scalar_t__ eh_max; scalar_t__ eh_entries; } ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 scalar_t__ EXT4_EXT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char const*,unsigned int,int /*<<< orphan*/ ,char*,unsigned long long,char const*,int,int,int,int,int,int) ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ext4_extent_header*,int) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(const char *function, unsigned int line,
			    struct inode *inode, struct ext4_extent_header *eh,
			    int depth, ext4_fsblk_t pblk)
{
	const char *error_msg;
	int max = 0, err = -EFSCORRUPTED;

	if (FUNC6(eh->eh_magic != EXT4_EXT_MAGIC)) {
		error_msg = "invalid magic";
		goto corrupted;
	}
	if (FUNC6(FUNC5(eh->eh_depth) != depth)) {
		error_msg = "unexpected eh_depth";
		goto corrupted;
	}
	if (FUNC6(eh->eh_max == 0)) {
		error_msg = "invalid eh_max";
		goto corrupted;
	}
	max = FUNC1(inode, depth);
	if (FUNC6(FUNC5(eh->eh_max) > max)) {
		error_msg = "too large eh_max";
		goto corrupted;
	}
	if (FUNC6(FUNC5(eh->eh_entries) > FUNC5(eh->eh_max))) {
		error_msg = "invalid eh_entries";
		goto corrupted;
	}
	if (!FUNC3(inode, eh, depth)) {
		error_msg = "invalid extent entries";
		goto corrupted;
	}
	if (FUNC6(depth > 32)) {
		error_msg = "too large eh_depth";
		goto corrupted;
	}
	/* Verify checksum on non-root extent tree nodes */
	if (FUNC4(inode) != depth &&
	    !FUNC2(inode, eh)) {
		error_msg = "extent tree corrupted";
		err = -EFSBADCRC;
		goto corrupted;
	}
	return 0;

corrupted:
	FUNC0(inode, function, line, 0,
			 "pblk %llu bad header/extent: %s - magic %x, "
			 "entries %u, max %u(%u), depth %u(%u)",
			 (unsigned long long) pblk, error_msg,
			 FUNC5(eh->eh_magic),
			 FUNC5(eh->eh_entries), FUNC5(eh->eh_max),
			 max, FUNC5(eh->eh_depth), depth);
	return err;
}