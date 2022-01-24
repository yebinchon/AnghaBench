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
struct cs35l36_private {int dummy; } ;
struct cs35l36_pll_config {int freq; } ;

/* Variables and functions */
 int FUNC0 (struct cs35l36_pll_config const*) ; 
 struct cs35l36_pll_config const* cs35l36_pll_sysclk ; 

__attribute__((used)) static const struct cs35l36_pll_config *FUNC1(
		struct cs35l36_private *cs35l36, int freq)
{
	int i;

	for (i = 0; i < FUNC0(cs35l36_pll_sysclk); i++) {
		if (cs35l36_pll_sysclk[i].freq == freq)
			return &cs35l36_pll_sysclk[i];
	}

	return NULL;
}