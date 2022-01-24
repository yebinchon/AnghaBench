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
struct super_block {int dummy; } ;
struct mmp_struct {int /*<<< orphan*/  mmp_checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct mmp_struct*) ; 

__attribute__((used)) static void FUNC2(struct super_block *sb, struct mmp_struct *mmp)
{
	if (!FUNC0(sb))
		return;

	mmp->mmp_checksum = FUNC1(sb, mmp);
}