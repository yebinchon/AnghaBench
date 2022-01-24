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
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct regmap*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regmap *map, int reg,
			   unsigned int mask,
			   unsigned int val, int shift)
{
	if (reg < 0 || FUNC0(shift < 0))
		return 0;
	return FUNC1(map, reg, mask << shift, val << shift);
}