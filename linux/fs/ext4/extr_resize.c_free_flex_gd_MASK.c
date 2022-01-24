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
struct ext4_new_flex_group_data {struct ext4_new_flex_group_data* groups; struct ext4_new_flex_group_data* bg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext4_new_flex_group_data*) ; 

__attribute__((used)) static void FUNC1(struct ext4_new_flex_group_data *flex_gd)
{
	FUNC0(flex_gd->bg_flags);
	FUNC0(flex_gd->groups);
	FUNC0(flex_gd);
}