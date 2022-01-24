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
struct mem_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t,struct mem_info*) ; 
 scalar_t__ FUNC1 (char*,size_t,struct mem_info*) ; 
 scalar_t__ FUNC2 (char*,size_t,struct mem_info*) ; 
 scalar_t__ FUNC3 (char*,size_t,struct mem_info*) ; 
 scalar_t__ FUNC4 (char*,size_t,char*) ; 

int FUNC5(char *out, size_t sz, struct mem_info *mem_info)
{
	int i = 0;

	i += FUNC1(out, sz, mem_info);
	i += FUNC4(out + i, sz - i, "|SNP ");
	i += FUNC2(out + i, sz - i, mem_info);
	i += FUNC4(out + i, sz - i, "|TLB ");
	i += FUNC3(out + i, sz - i, mem_info);
	i += FUNC4(out + i, sz - i, "|LCK ");
	i += FUNC0(out + i, sz - i, mem_info);

	return i;
}