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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 unsigned char CPLD_CKS_MASK ; 
 unsigned char* cks_vals ; 
 unsigned char FUNC1 (struct snd_ice1712*) ; 
 unsigned int* qtet_rates ; 

__attribute__((used)) static unsigned int FUNC2(struct snd_ice1712 *ice)
{
	int i;
	unsigned char result;

	result =  FUNC1(ice) & CPLD_CKS_MASK;
	for (i = 0; i < FUNC0(cks_vals); i++)
		if (cks_vals[i] == result)
			return qtet_rates[i];
	return 0;
}