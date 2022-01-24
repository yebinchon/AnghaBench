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
struct TYPE_2__ {int /*<<< orphan*/  s_sbh; int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_FEATURE_COMPAT_EXT_ATTR ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	if (FUNC0(sb, EXT2_FEATURE_COMPAT_EXT_ATTR))
		return;

	FUNC5(&FUNC1(sb)->s_lock);
	FUNC3(sb);
	FUNC2(sb, EXT2_FEATURE_COMPAT_EXT_ATTR);
	FUNC6(&FUNC1(sb)->s_lock);
	FUNC4(FUNC1(sb)->s_sbh);
}