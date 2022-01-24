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
struct snd_opl3 {unsigned long r_port; unsigned long l_port; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned short OPL3_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_opl3 * opl3, unsigned short cmd, unsigned char val)
{
	unsigned long flags;
	unsigned long port;

	/*
	 * The OPL-3 survives with just two INBs
	 * after writing to a register.
	 */

	port = (cmd & OPL3_RIGHT) ? opl3->r_port : opl3->l_port;

	FUNC2(&opl3->reg_lock, flags);

	FUNC1((unsigned char) cmd, port);
	FUNC0(opl3->l_port);
	FUNC0(opl3->l_port);

	FUNC1((unsigned char) val, port + 1);
	FUNC0(opl3->l_port);
	FUNC0(opl3->l_port);

	FUNC3(&opl3->reg_lock, flags);
}