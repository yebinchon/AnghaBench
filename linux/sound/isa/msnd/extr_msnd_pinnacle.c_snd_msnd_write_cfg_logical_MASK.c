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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IREG_LOGDEVICE ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int,int) ; 

__attribute__((used)) static int FUNC6(int cfg, int num, u16 io0,
				      u16 io1, u16 irq, int mem)
{
	if (FUNC1(cfg, IREG_LOGDEVICE, num))
		return -EIO;
	if (FUNC2(cfg, num, io0))
		return -EIO;
	if (FUNC3(cfg, num, io1))
		return -EIO;
	if (FUNC4(cfg, num, irq))
		return -EIO;
	if (FUNC5(cfg, num, mem))
		return -EIO;
	if (FUNC0(cfg, num))
		return -EIO;
	return 0;
}