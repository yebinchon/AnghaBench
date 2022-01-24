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
typedef  unsigned int uint64_t ;
struct regmap {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct regmap *map, int mode,
					 unsigned int val,
					 unsigned int num_per_reg,
					 unsigned int base_reg,
					 unsigned int width)
{
	uint64_t offset = mode;
	unsigned int reg, shift, rem;

	rem = FUNC1(offset, num_per_reg);

	reg = offset * FUNC2(map) + base_reg;
	shift = width * (num_per_reg - 1 - rem);

	FUNC3(map, reg, FUNC0(width - 1, 0) << shift,
			   val << shift);
}