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
struct tomoyo_number_union {unsigned long const* values; scalar_t__ group; } ;

/* Variables and functions */
 int FUNC0 (unsigned long const,unsigned long const,scalar_t__) ; 

bool FUNC1(const unsigned long value,
				 const struct tomoyo_number_union *ptr)
{
	if (ptr->group)
		return FUNC0(value, value, ptr->group);
	return value >= ptr->values[0] && value <= ptr->values[1];
}