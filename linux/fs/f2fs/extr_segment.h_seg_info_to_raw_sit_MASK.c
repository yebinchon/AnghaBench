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
struct seg_entry {int /*<<< orphan*/  valid_blocks; int /*<<< orphan*/  ckpt_valid_blocks; int /*<<< orphan*/  ckpt_valid_map; } ;
struct f2fs_sit_entry {int /*<<< orphan*/  valid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIT_VBLOCK_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct seg_entry*,struct f2fs_sit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct seg_entry *se,
					struct f2fs_sit_entry *rs)
{
	FUNC0(se, rs);

	FUNC1(se->ckpt_valid_map, rs->valid_map, SIT_VBLOCK_MAP_SIZE);
	se->ckpt_valid_blocks = se->valid_blocks;
}