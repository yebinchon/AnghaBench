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
 unsigned int FUNC0 (char const**) ; 
 char const** s390_dwarf_regs ; 

const char *FUNC1(unsigned int n)
{
	return (n >= FUNC0(s390_dwarf_regs)) ? NULL : s390_dwarf_regs[n];
}