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
 int has_automatic_cstate_conversion ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 

void FUNC2(unsigned int family, unsigned int model)
{
	if (FUNC1(family, model) || FUNC0(family, model))
		has_automatic_cstate_conversion = 1;
}