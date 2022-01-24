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
struct tnum {int /*<<< orphan*/  mask; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(char *str, size_t size, struct tnum a)
{
	return FUNC0(str, size, "(%#llx; %#llx)", a.value, a.mask);
}