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
 int FUNC0 (unsigned int*) ; 
 unsigned char* freq_bits ; 
 unsigned int* rates ; 

__attribute__((used)) static unsigned char FUNC1(unsigned int rate)
{
	int i;

	for (i = 0; i < FUNC0(rates); i++)
		if (rate == rates[i])
			return freq_bits[i];
	// snd_BUG();
	return freq_bits[FUNC0(rates) - 1];
}