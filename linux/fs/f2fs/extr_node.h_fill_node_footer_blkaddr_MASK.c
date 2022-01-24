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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next_blkaddr; int /*<<< orphan*/  cp_ver; } ;
struct f2fs_node {TYPE_1__ footer; } ;
struct f2fs_checkpoint {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CP_CRC_RECOVERY_FLAG ; 
 struct f2fs_checkpoint* FUNC0 (int /*<<< orphan*/ ) ; 
 struct f2fs_node* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct f2fs_checkpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct f2fs_checkpoint*) ; 
 int FUNC7 (struct f2fs_checkpoint*) ; 

__attribute__((used)) static inline void FUNC8(struct page *page, block_t blkaddr)
{
	struct f2fs_checkpoint *ckpt = FUNC0(FUNC2(page));
	struct f2fs_node *rn = FUNC1(page);
	__u64 cp_ver = FUNC7(ckpt);

	if (FUNC3(ckpt, CP_CRC_RECOVERY_FLAG))
		cp_ver |= (FUNC6(ckpt) << 32);

	rn->footer.cp_ver = FUNC5(cp_ver);
	rn->footer.next_blkaddr = FUNC4(blkaddr);
}