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
typedef  int u32 ;
struct jz_icdc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ICDC_RGADW_OFFSET ; 
 int ICDC_RGADW_RGWR ; 
 int FUNC0 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC1(struct jz_icdc *icdc)
{
	u32 reg;

	return FUNC0(icdc->base + ICDC_RGADW_OFFSET, reg,
				  !(reg & ICDC_RGADW_RGWR), 1000, 10000);
}