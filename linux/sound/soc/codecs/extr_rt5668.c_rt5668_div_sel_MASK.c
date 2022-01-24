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
struct rt5668_priv {int sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int const) ; 

__attribute__((used)) static int FUNC2(struct rt5668_priv *rt5668,
			  int target, const int div[], int size)
{
	int i;

	if (rt5668->sysclk < target) {
		FUNC0("sysclk rate %d is too low\n",
			rt5668->sysclk);
		return 0;
	}

	for (i = 0; i < size - 1; i++) {
		FUNC1("div[%d]=%d\n", i, div[i]);
		if (target * div[i] == rt5668->sysclk)
			return i;
		if (target * div[i + 1] > rt5668->sysclk) {
			FUNC0("can't find div for sysclk %d\n",
				rt5668->sysclk);
			return i;
		}
	}

	if (target * div[i] < rt5668->sysclk)
		FUNC0("sysclk rate %d is too high\n",
			rt5668->sysclk);

	return size - 1;

}