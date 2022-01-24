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

/* Variables and functions */
 int /*<<< orphan*/  i8253_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned int count)
{
	unsigned long flags;

	FUNC3(&i8253_lock, flags);

	if (count) {
		/* set command for counter 2, 2 byte write */
		FUNC2(0xB6, 0x43);
		/* select desired HZ */
		FUNC2(count & 0xff, 0x42);
		FUNC1((count >> 8) & 0xff, 0x42);
		/* enable counter 2 */
		FUNC2(FUNC0(0x61) | 3, 0x61);
	} else {
		/* disable counter 2 */
		FUNC1(FUNC0(0x61) & 0xFC, 0x61);
	}

	FUNC4(&i8253_lock, flags);
}