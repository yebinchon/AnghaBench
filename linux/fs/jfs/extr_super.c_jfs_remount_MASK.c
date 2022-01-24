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
struct super_block {int s_flags; } ;
typedef  scalar_t__ s64 ;
struct TYPE_4__ {int flag; TYPE_1__* direct_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int JFS_NOINTEGRITY ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int) ; 
 int FUNC2 (struct super_block*,int) ; 
 int FUNC3 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int) ; 
 int FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct super_block*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, int *flags, char *data)
{
	s64 newLVSize = 0;
	int rc = 0;
	int flag = FUNC0(sb)->flag;
	int ret;

	FUNC9(sb);
	if (!FUNC6(data, sb, &newLVSize, &flag))
		return -EINVAL;

	if (newLVSize) {
		if (FUNC8(sb)) {
			FUNC7("JFS: resize requires volume to be mounted read-write\n");
			return -EROFS;
		}
		rc = FUNC3(sb, newLVSize, 0);
		if (rc)
			return rc;
	}

	if (FUNC8(sb) && !(*flags & SB_RDONLY)) {
		/*
		 * Invalidate any previously read metadata.  fsck may have
		 * changed the on-disk data since we mounted r/o
		 */
		FUNC10(FUNC0(sb)->direct_inode->i_mapping, 0);

		FUNC0(sb)->flag = flag;
		ret = FUNC4(sb, 1);

		/* mark the fs r/w for quota activity */
		sb->s_flags &= ~SB_RDONLY;

		FUNC1(sb, -1);
		return ret;
	}
	if (!FUNC8(sb) && (*flags & SB_RDONLY)) {
		rc = FUNC2(sb, -1);
		if (rc < 0)
			return rc;
		rc = FUNC5(sb);
		FUNC0(sb)->flag = flag;
		return rc;
	}
	if ((FUNC0(sb)->flag & JFS_NOINTEGRITY) != (flag & JFS_NOINTEGRITY))
		if (!FUNC8(sb)) {
			rc = FUNC5(sb);
			if (rc)
				return rc;

			FUNC0(sb)->flag = flag;
			ret = FUNC4(sb, 1);
			return ret;
		}
	FUNC0(sb)->flag = flag;

	return 0;
}