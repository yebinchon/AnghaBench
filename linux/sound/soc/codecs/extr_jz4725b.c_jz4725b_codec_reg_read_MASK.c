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
typedef  unsigned int u32 ;
struct jz_icdc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ICDC_RGADW_OFFSET ; 
 unsigned int ICDC_RGADW_RGADDR_MASK ; 
 unsigned int ICDC_RGADW_RGADDR_OFFSET ; 
 scalar_t__ ICDC_RGDATA_OFFSET ; 
 unsigned int ICDC_RGDATA_RGDOUT_MASK ; 
 int FUNC0 (struct jz_icdc*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(void *context, unsigned int reg,
				  unsigned int *val)
{
	struct jz_icdc *icdc = context;
	unsigned int i;
	u32 tmp;
	int ret;

	ret = FUNC0(icdc);
	if (ret)
		return ret;

	tmp = FUNC1(icdc->base + ICDC_RGADW_OFFSET);
	tmp = (tmp & ~ICDC_RGADW_RGADDR_MASK)
	    | (reg << ICDC_RGADW_RGADDR_OFFSET);
	FUNC2(tmp, icdc->base + ICDC_RGADW_OFFSET);

	/* wait 6+ cycles */
	for (i = 0; i < 6; i++)
		*val = FUNC1(icdc->base + ICDC_RGDATA_OFFSET) &
			ICDC_RGDATA_RGDOUT_MASK;

	return 0;
}