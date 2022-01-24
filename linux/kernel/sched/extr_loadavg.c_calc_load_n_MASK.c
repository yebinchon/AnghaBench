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
 int /*<<< orphan*/  FSHIFT ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 

unsigned long
FUNC2(unsigned long load, unsigned long exp,
	    unsigned long active, unsigned int n)
{
	return FUNC0(load, FUNC1(exp, FSHIFT, n), active);
}