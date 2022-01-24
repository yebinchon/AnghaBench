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
typedef  int /*<<< orphan*/  u32 ;
struct mb_cache {int dummy; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_ino; } ;
struct ext4_iloc {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct mb_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mb_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 

__attribute__((used)) static int FUNC16(handle_t *handle, struct inode *ea_inode,
				       int ref_change)
{
	struct mb_cache *ea_inode_cache = FUNC0(ea_inode);
	struct ext4_iloc iloc;
	s64 ref_count;
	u32 hash;
	int ret;

	FUNC11(ea_inode);

	ret = FUNC6(handle, ea_inode, &iloc);
	if (ret)
		goto out;

	ref_count = FUNC9(ea_inode);
	ref_count += ref_change;
	FUNC10(ea_inode, ref_count);

	if (ref_change > 0) {
		FUNC1(ref_count <= 0, "EA inode %lu ref_count=%lld",
			  ea_inode->i_ino, ref_count);

		if (ref_count == 1) {
			FUNC1(ea_inode->i_nlink, "EA inode %lu i_nlink=%u",
				  ea_inode->i_ino, ea_inode->i_nlink);

			FUNC15(ea_inode, 1);
			FUNC5(handle, ea_inode);

			if (ea_inode_cache) {
				hash = FUNC8(ea_inode);
				FUNC13(ea_inode_cache,
						      GFP_NOFS, hash,
						      ea_inode->i_ino,
						      true /* reusable */);
			}
		}
	} else {
		FUNC1(ref_count < 0, "EA inode %lu ref_count=%lld",
			  ea_inode->i_ino, ref_count);

		if (ref_count == 0) {
			FUNC1(ea_inode->i_nlink != 1,
				  "EA inode %lu i_nlink=%u",
				  ea_inode->i_ino, ea_inode->i_nlink);

			FUNC2(ea_inode);
			FUNC4(handle, ea_inode);

			if (ea_inode_cache) {
				hash = FUNC8(ea_inode);
				FUNC14(ea_inode_cache, hash,
						      ea_inode->i_ino);
			}
		}
	}

	ret = FUNC3(handle, ea_inode, &iloc);
	if (ret)
		FUNC7(ea_inode,
				   "ext4_mark_iloc_dirty() failed ret=%d", ret);
out:
	FUNC12(ea_inode);
	return ret;
}