#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssm2518 {unsigned int const sysclk; } ;
struct TYPE_3__ {unsigned int rate; unsigned int* sysclks; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* ssm2518_mcs_lut ; 

__attribute__((used)) static int FUNC1(struct ssm2518 *ssm2518,
	unsigned int rate)
{
	const unsigned int *sysclks = NULL;
	int i;

	for (i = 0; i < FUNC0(ssm2518_mcs_lut); i++) {
		if (ssm2518_mcs_lut[i].rate == rate) {
			sysclks = ssm2518_mcs_lut[i].sysclks;
			break;
		}
	}

	if (!sysclks)
		return -EINVAL;

	for (i = 0; sysclks[i]; i++) {
		if (sysclks[i] == ssm2518->sysclk)
			return i;
	}

	return -EINVAL;
}