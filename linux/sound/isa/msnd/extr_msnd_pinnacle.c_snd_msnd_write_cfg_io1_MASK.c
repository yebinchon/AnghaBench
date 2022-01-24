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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IREG_IO1_BASEHI ; 
 int /*<<< orphan*/  IREG_IO1_BASELO ; 
 int /*<<< orphan*/  IREG_LOGDEVICE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(int cfg, int num, u16 io)
{
	if (FUNC2(cfg, IREG_LOGDEVICE, num))
		return -EIO;
	if (FUNC2(cfg, IREG_IO1_BASEHI, FUNC0(io)))
		return -EIO;
	if (FUNC2(cfg, IREG_IO1_BASELO, FUNC1(io)))
		return -EIO;
	return 0;
}