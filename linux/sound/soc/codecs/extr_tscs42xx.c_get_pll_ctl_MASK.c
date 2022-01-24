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
struct pll_ctl {int input_freq; } ;

/* Variables and functions */
 int FUNC0 (struct pll_ctl*) ; 
 struct pll_ctl* pll_ctls ; 

__attribute__((used)) static const struct pll_ctl *FUNC1(int input_freq)
{
	int i;
	const struct pll_ctl *pll_ctl = NULL;

	for (i = 0; i < FUNC0(pll_ctls); ++i)
		if (input_freq == pll_ctls[i].input_freq) {
			pll_ctl = &pll_ctls[i];
			break;
		}

	return pll_ctl;
}