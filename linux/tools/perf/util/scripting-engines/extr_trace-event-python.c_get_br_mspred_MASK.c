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
struct branch_flags {scalar_t__ mispred; int /*<<< orphan*/  predicted; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC1(struct branch_flags *flags, char *bf, int size)
{
	if (!flags->mispred  && !flags->predicted)
		return FUNC0(bf, size, "%s", "-");

	if (flags->mispred)
		return FUNC0(bf, size, "%s", "M");

	return FUNC0(bf, size, "%s", "P");
}