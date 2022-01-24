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
 int EIO ; 
 int /*<<< orphan*/  IREG_ACTIVATE ; 
 int /*<<< orphan*/  IREG_LOGDEVICE ; 
 int LD_ACTIVATE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(int cfg, int num)
{
	if (FUNC0(cfg, IREG_LOGDEVICE, num))
		return -EIO;
	if (FUNC0(cfg, IREG_ACTIVATE, LD_ACTIVATE))
		return -EIO;
	return 0;
}