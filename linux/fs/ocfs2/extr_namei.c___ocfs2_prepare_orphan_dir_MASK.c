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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 char* OCFS2_DIO_ORPHAN_PREFIX ; 
 int OCFS2_DIO_ORPHAN_PREFIX_LEN ; 
 int OCFS2_ORPHAN_NAMELEN ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ocfs2_super*,struct inode*,struct buffer_head*,char*,int,struct ocfs2_dir_lookup_result*) ; 
 int FUNC4 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct inode *orphan_dir_inode,
				      struct buffer_head *orphan_dir_bh,
				      u64 blkno,
				      char *name,
				      struct ocfs2_dir_lookup_result *lookup,
				      bool dio)
{
	int ret;
	struct ocfs2_super *osb = FUNC0(orphan_dir_inode->i_sb);
	int namelen = dio ?
			(OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN) :
			OCFS2_ORPHAN_NAMELEN;

	if (dio) {
		ret = FUNC4(name, OCFS2_DIO_ORPHAN_PREFIX_LEN + 1, "%s",
				OCFS2_DIO_ORPHAN_PREFIX);
		if (ret != OCFS2_DIO_ORPHAN_PREFIX_LEN) {
			ret = -EINVAL;
			FUNC1(ret);
			return ret;
		}

		ret = FUNC2(blkno,
				name + OCFS2_DIO_ORPHAN_PREFIX_LEN);
	} else
		ret = FUNC2(blkno, name);
	if (ret < 0) {
		FUNC1(ret);
		return ret;
	}

	ret = FUNC3(osb, orphan_dir_inode,
					   orphan_dir_bh, name,
					   namelen, lookup);
	if (ret < 0) {
		FUNC1(ret);
		return ret;
	}

	return 0;
}