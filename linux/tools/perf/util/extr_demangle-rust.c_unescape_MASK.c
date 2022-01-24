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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC2(const char **in, char **out, const char *seq, char value)
{
	size_t len = FUNC0(seq);

	if (FUNC1(*in, seq, len))
		return false;

	**out = value;

	*in += len;
	*out += 1;

	return true;
}