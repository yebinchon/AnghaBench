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
struct seg_entry {int /*<<< orphan*/  mtime; int /*<<< orphan*/  type; int /*<<< orphan*/  cur_valid_map_mir; int /*<<< orphan*/  ckpt_valid_map; int /*<<< orphan*/  cur_valid_map; void* ckpt_valid_blocks; void* valid_blocks; } ;
struct f2fs_sit_entry {int /*<<< orphan*/  mtime; int /*<<< orphan*/  valid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct f2fs_sit_entry*) ; 
 void* FUNC1 (struct f2fs_sit_entry*) ; 
 int /*<<< orphan*/  SIT_VBLOCK_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct seg_entry *se,
					struct f2fs_sit_entry *rs)
{
	se->valid_blocks = FUNC1(rs);
	se->ckpt_valid_blocks = FUNC1(rs);
	FUNC3(se->cur_valid_map, rs->valid_map, SIT_VBLOCK_MAP_SIZE);
	FUNC3(se->ckpt_valid_map, rs->valid_map, SIT_VBLOCK_MAP_SIZE);
#ifdef CONFIG_F2FS_CHECK_FS
	memcpy(se->cur_valid_map_mir, rs->valid_map, SIT_VBLOCK_MAP_SIZE);
#endif
	se->type = FUNC0(rs);
	se->mtime = FUNC2(rs->mtime);
}