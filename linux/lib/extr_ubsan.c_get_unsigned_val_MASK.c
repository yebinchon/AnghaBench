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
typedef  unsigned long u_max ;
typedef  unsigned long u64 ;
struct type_descriptor {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type_descriptor*) ; 
 int FUNC1 (struct type_descriptor*) ; 

__attribute__((used)) static u_max FUNC2(struct type_descriptor *type, void *val)
{
	if (FUNC0(type))
		return (unsigned long)val;

	if (FUNC1(type) == 64)
		return *(u64 *)val;

	return *(u_max *)val;
}