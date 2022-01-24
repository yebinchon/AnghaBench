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
struct page {int dummy; } ;
struct f2fs_checkpoint {int dummy; } ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CP_CRC_RECOVERY_FLAG ; 
 int /*<<< orphan*/  CP_NOCRC_RECOVERY_FLAG ; 
 struct f2fs_checkpoint* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct f2fs_checkpoint*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct f2fs_checkpoint*) ; 
 int FUNC5 (struct f2fs_checkpoint*) ; 

__attribute__((used)) static inline bool FUNC6(struct page *page)
{
	struct f2fs_checkpoint *ckpt = FUNC0(FUNC1(page));
	__u64 cp_ver = FUNC5(ckpt);

	/* Don't care crc part, if fsck.f2fs sets it. */
	if (FUNC2(ckpt, CP_NOCRC_RECOVERY_FLAG))
		return (cp_ver << 32) == (FUNC3(page) << 32);

	if (FUNC2(ckpt, CP_CRC_RECOVERY_FLAG))
		cp_ver |= (FUNC4(ckpt) << 32);

	return cp_ver == FUNC3(page);
}