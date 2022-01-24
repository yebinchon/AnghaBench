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
struct TYPE_2__ {int /*<<< orphan*/ * ent32_p; } ;
struct fat_entry {int /*<<< orphan*/  fat_inode; int /*<<< orphan*/ * bhs; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fat_entry *fatent, int new)
{
	FUNC0(new & 0xf0000000);
	new |= FUNC2(*fatent->u.ent32_p) & ~0x0fffffff;
	*fatent->u.ent32_p = FUNC1(new);
	FUNC3(fatent->bhs[0], fatent->fat_inode);
}