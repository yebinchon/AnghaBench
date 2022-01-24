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
struct node_info {int /*<<< orphan*/  version; void* blk_addr; void* ino; } ;
struct f2fs_nat_entry {int /*<<< orphan*/  version; int /*<<< orphan*/  block_addr; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct node_info *ni,
						struct f2fs_nat_entry *raw_ne)
{
	ni->ino = FUNC0(raw_ne->ino);
	ni->blk_addr = FUNC0(raw_ne->block_addr);
	ni->version = raw_ne->version;
}