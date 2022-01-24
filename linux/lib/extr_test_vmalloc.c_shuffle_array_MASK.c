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
typedef  int /*<<< orphan*/  rnd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int) ; 

__attribute__((used)) static void FUNC1(int *arr, int n)
{
	unsigned int rnd;
	int i, j, x;

	for (i = n - 1; i > 0; i--)  {
		FUNC0(&rnd, sizeof(rnd));

		/* Cut the range. */
		j = rnd % i;

		/* Swap indexes. */
		x = arr[i];
		arr[i] = arr[j];
		arr[j] = x;
	}
}