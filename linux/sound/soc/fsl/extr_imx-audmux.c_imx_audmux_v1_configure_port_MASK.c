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
 unsigned int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int ENOSYS ; 
 scalar_t__ IMX21_AUDMUX ; 
 scalar_t__ audmux_base ; 
 scalar_t__ audmux_type ; 
 scalar_t__* port_mapping ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

int FUNC2(unsigned int port, unsigned int pcr)
{
	if (audmux_type != IMX21_AUDMUX)
		return -EINVAL;

	if (!audmux_base)
		return -ENOSYS;

	if (port >= FUNC0(port_mapping))
		return -EINVAL;

	FUNC1(pcr, audmux_base + port_mapping[port]);

	return 0;
}