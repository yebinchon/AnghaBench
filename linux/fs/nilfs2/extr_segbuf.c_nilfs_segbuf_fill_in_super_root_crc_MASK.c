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
typedef  int /*<<< orphan*/  u32 ;
struct the_nilfs {int /*<<< orphan*/  ns_inode_size; } ;
struct nilfs_super_root {int /*<<< orphan*/  sr_sum; } ;
struct nilfs_segment_buffer {TYPE_2__* sb_super_root; TYPE_1__* sb_super; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct nilfs_segment_buffer *segbuf,
				    u32 seed)
{
	struct nilfs_super_root *raw_sr;
	struct the_nilfs *nilfs = segbuf->sb_super->s_fs_info;
	unsigned int srsize;
	u32 crc;

	raw_sr = (struct nilfs_super_root *)segbuf->sb_super_root->b_data;
	srsize = FUNC0(nilfs->ns_inode_size);
	crc = FUNC2(seed,
		       (unsigned char *)raw_sr + sizeof(raw_sr->sr_sum),
		       srsize - sizeof(raw_sr->sr_sum));
	raw_sr->sr_sum = FUNC1(crc);
}