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
typedef  scalar_t__ u32 ;
struct o2hb_region {int dummy; } ;
struct o2hb_disk_heartbeat_block {int /*<<< orphan*/  hb_cksum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct o2hb_region*,struct o2hb_disk_heartbeat_block*) ; 

__attribute__((used)) static int FUNC2(struct o2hb_region *reg,
			   struct o2hb_disk_heartbeat_block *hb_block)
{
	u32 read, computed;

	read = FUNC0(hb_block->hb_cksum);
	computed = FUNC1(reg, hb_block);

	return read == computed;
}