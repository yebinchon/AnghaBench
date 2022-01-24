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
 unsigned int TDM_OUT_TDM ; 
 unsigned int FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int mode,
					 unsigned int channels)
{
	if (mode == TDM_OUT_TDM)
		return FUNC0(channels);
	else
		return 2;
}