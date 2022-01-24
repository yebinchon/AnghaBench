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
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_ext4_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FLAGS_RESIZING ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct super_block *sb)
{
	FUNC1(EXT4_FLAGS_RESIZING, &FUNC0(sb)->s_ext4_flags);
	FUNC2();
}