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
 int EINVAL ; 
 int ENOSYS ; 
 scalar_t__ IMX31_AUDMUX ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ audmux_base ; 
 scalar_t__ audmux_clk ; 
 scalar_t__ audmux_type ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

int FUNC5(unsigned int port, unsigned int ptcr,
		unsigned int pdcr)
{
	int ret;

	if (audmux_type != IMX31_AUDMUX)
		return -EINVAL;

	if (!audmux_base)
		return -ENOSYS;

	if (audmux_clk) {
		ret = FUNC3(audmux_clk);
		if (ret)
			return ret;
	}

	FUNC4(ptcr, audmux_base + FUNC1(port));
	FUNC4(pdcr, audmux_base + FUNC0(port));

	if (audmux_clk)
		FUNC2(audmux_clk);

	return 0;
}