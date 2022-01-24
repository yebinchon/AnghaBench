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
struct type_descriptor {int dummy; } ;
typedef  unsigned int s_max ;
typedef  unsigned int s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type_descriptor*) ; 
 int FUNC1 (struct type_descriptor*) ; 

__attribute__((used)) static s_max FUNC2(struct type_descriptor *type, void *val)
{
	if (FUNC0(type)) {
		unsigned extra_bits = sizeof(s_max)*8 - FUNC1(type);
		unsigned long ulong_val = (unsigned long)val;

		return ((s_max)ulong_val) << extra_bits >> extra_bits;
	}

	if (FUNC1(type) == 64)
		return *(s64 *)val;

	return *(s_max *)val;
}