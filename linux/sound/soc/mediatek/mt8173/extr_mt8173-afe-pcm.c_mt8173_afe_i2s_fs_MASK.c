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
struct TYPE_3__ {unsigned int rate; int regvalue; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* mt8173_afe_i2s_rates ; 

__attribute__((used)) static int FUNC1(unsigned int sample_rate)
{
	int i;

	for (i = 0; i < FUNC0(mt8173_afe_i2s_rates); i++)
		if (mt8173_afe_i2s_rates[i].rate == sample_rate)
			return mt8173_afe_i2s_rates[i].regvalue;

	return -EINVAL;
}