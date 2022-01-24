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
typedef  long kernel_ulong_t ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 long FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *alias,
		     kernel_ulong_t *arr, unsigned int min, unsigned int max)
{
	unsigned int i;

	for (i = min / BITS_PER_LONG; i < max / BITS_PER_LONG + 1; i++)
		arr[i] = FUNC0(arr[i]);
	for (i = min; i < max; i++)
		if (arr[i / BITS_PER_LONG] & (1L << (i%BITS_PER_LONG)))
			FUNC1(alias + FUNC2(alias), "%X,*", i);
}