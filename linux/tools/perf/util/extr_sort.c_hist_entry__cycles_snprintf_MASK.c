#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hist_entry {TYPE_2__* branch_info; } ;
struct TYPE_3__ {char* cycles; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,unsigned int,char*) ; 
 int FUNC1 (char*,size_t,char*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC2(struct hist_entry *he, char *bf,
				    size_t size, unsigned int width)
{
	if (!he->branch_info)
		return FUNC1(bf, size, "%-.*s", width, "N/A");
	if (he->branch_info->flags.cycles == 0)
		return FUNC0(bf, size, "%-*s", width, "-");
	return FUNC0(bf, size, "%-*hd", width,
			       he->branch_info->flags.cycles);
}