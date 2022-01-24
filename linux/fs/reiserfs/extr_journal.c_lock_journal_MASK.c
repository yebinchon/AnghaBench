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
struct super_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  j_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 TYPE_1__ journal ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct super_block*) ; 

__attribute__((used)) static inline void FUNC3(struct super_block *sb)
{
	FUNC0(sb, journal.lock_journal);

	FUNC2(&FUNC1(sb)->j_mutex, sb);
}