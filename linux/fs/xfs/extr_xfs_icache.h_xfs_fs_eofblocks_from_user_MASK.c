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
struct xfs_fs_eofblocks {scalar_t__ eof_version; int eof_flags; int /*<<< orphan*/  eof_gid; int /*<<< orphan*/  eof_uid; int /*<<< orphan*/  eof_min_file_size; int /*<<< orphan*/  eof_prid; int /*<<< orphan*/ * pad64; int /*<<< orphan*/  pad32; } ;
struct xfs_eofblocks {int eof_flags; int /*<<< orphan*/  eof_gid; int /*<<< orphan*/  eof_uid; int /*<<< orphan*/  eof_min_file_size; int /*<<< orphan*/  eof_prid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INVALID_GID ; 
 int /*<<< orphan*/  INVALID_UID ; 
 scalar_t__ XFS_EOFBLOCKS_VERSION ; 
 int XFS_EOF_FLAGS_GID ; 
 int XFS_EOF_FLAGS_UID ; 
 int XFS_EOF_FLAGS_VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC6(
	struct xfs_fs_eofblocks		*src,
	struct xfs_eofblocks		*dst)
{
	if (src->eof_version != XFS_EOFBLOCKS_VERSION)
		return -EINVAL;

	if (src->eof_flags & ~XFS_EOF_FLAGS_VALID)
		return -EINVAL;

	if (FUNC4(&src->pad32, 0, sizeof(src->pad32)) ||
	    FUNC4(src->pad64, 0, sizeof(src->pad64)))
		return -EINVAL;

	dst->eof_flags = src->eof_flags;
	dst->eof_prid = src->eof_prid;
	dst->eof_min_file_size = src->eof_min_file_size;

	dst->eof_uid = INVALID_UID;
	if (src->eof_flags & XFS_EOF_FLAGS_UID) {
		dst->eof_uid = FUNC3(FUNC0(), src->eof_uid);
		if (!FUNC5(dst->eof_uid))
			return -EINVAL;
	}

	dst->eof_gid = INVALID_GID;
	if (src->eof_flags & XFS_EOF_FLAGS_GID) {
		dst->eof_gid = FUNC2(FUNC0(), src->eof_gid);
		if (!FUNC1(dst->eof_gid))
			return -EINVAL;
	}
	return 0;
}