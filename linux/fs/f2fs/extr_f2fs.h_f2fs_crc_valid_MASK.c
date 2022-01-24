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
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct f2fs_sb_info*,void*,size_t) ; 

__attribute__((used)) static inline bool FUNC1(struct f2fs_sb_info *sbi, __u32 blk_crc,
				  void *buf, size_t buf_size)
{
	return FUNC0(sbi, buf, buf_size) == blk_crc;
}