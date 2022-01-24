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
typedef  scalar_t__ u8 ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_AUDIO ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,unsigned int,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(void *context, unsigned int reg,
				 unsigned int *value)
{
	struct device *dev = context;
	int status;

	u8 value8;
	status = FUNC0(dev, AB8500_AUDIO,
						   reg, &value8);
	*value = (unsigned int)value8;

	return status;
}