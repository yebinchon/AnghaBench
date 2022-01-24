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
struct hfsplus_extent {int /*<<< orphan*/  block_count; int /*<<< orphan*/  start_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC3(struct hfsplus_extent *extent)
{
	int i;

	FUNC1(EXTENT, "   ");
	for (i = 0; i < 8; i++)
		FUNC2(EXTENT, " %u:%u",
			     FUNC0(extent[i].start_block),
			     FUNC0(extent[i].block_count));
	FUNC2(EXTENT, "\n");
}