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
 int FUNC0 (int*) ; 
 int* cks_vals ; 
 int* qtet_rates ; 

__attribute__((used)) static int FUNC1(int rate)
{
	int i;
	for (i = 0; i < FUNC0(qtet_rates); i++)
		if (qtet_rates[i] == rate)
			return cks_vals[i];
	return 0;
}