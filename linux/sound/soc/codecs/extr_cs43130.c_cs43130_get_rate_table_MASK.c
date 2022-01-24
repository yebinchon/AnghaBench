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
struct cs43130_rate_map {int fs; } ;

/* Variables and functions */
 int FUNC0 (struct cs43130_rate_map const*) ; 
 struct cs43130_rate_map const* cs43130_rate_table ; 

__attribute__((used)) static const struct cs43130_rate_map *FUNC1(int fs)
{
	int i;

	for (i = 0; i < FUNC0(cs43130_rate_table); i++) {
		if (cs43130_rate_table[i].fs == fs)
			return &cs43130_rate_table[i];
	}

	return NULL;
}