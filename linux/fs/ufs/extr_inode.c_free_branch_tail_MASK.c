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
typedef  scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_apb; int /*<<< orphan*/  s_fpb; } ;
struct ufs_buffer_head {int dummy; } ;
struct to_free {struct inode* inode; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  meta_lock; } ;
struct TYPE_3__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct to_free*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_buffer_head*) ; 
 scalar_t__ FUNC6 (struct ufs_buffer_head*) ; 
 void* FUNC7 (struct ufs_sb_private_info*,struct ufs_buffer_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_sb_private_info*,void*) ; 
 scalar_t__ FUNC11 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct inode *inode, unsigned from, struct ufs_buffer_head *ubh, int depth)
{
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	unsigned i;

	if (--depth) {
		for (i = from; i < uspi->s_apb ; i++) {
			void *p = FUNC7(uspi, ubh, i);
			u64 block = FUNC11(sb, p);
			if (block) {
				FUNC12(&FUNC1(inode)->meta_lock);
				FUNC10(uspi, p);
				FUNC13(&FUNC1(inode)->meta_lock);
				FUNC8(ubh);
				FUNC4(inode, block, depth);
			}
		}
	} else {
		struct to_free ctx = {.inode = inode};

		for (i = from; i < uspi->s_apb; i++) {
			void *p = FUNC7(uspi, ubh, i);
			u64 block = FUNC11(sb, p);
			if (block) {
				FUNC12(&FUNC1(inode)->meta_lock);
				FUNC10(uspi, p);
				FUNC13(&FUNC1(inode)->meta_lock);
				FUNC8(ubh);
				FUNC3(&ctx, block, uspi->s_fpb);
			}
		}
		FUNC3(&ctx, 0, 0);
	}
	if (FUNC0(inode) && FUNC6(ubh))
		FUNC9(ubh);
	FUNC5(ubh);
}