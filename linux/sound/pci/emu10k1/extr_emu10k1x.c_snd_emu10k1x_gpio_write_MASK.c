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
struct emu10k1x {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;

/* Variables and functions */
 scalar_t__ GPIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct emu10k1x *emu, unsigned int value)
{
	unsigned long flags;

	FUNC1(&emu->emu_lock, flags);
	FUNC0(value, emu->port + GPIO);
	FUNC2(&emu->emu_lock, flags);
}