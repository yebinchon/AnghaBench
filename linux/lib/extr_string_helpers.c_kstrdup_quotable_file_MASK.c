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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ PATH_MAX ; 
 char* FUNC1 (struct file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

char *FUNC6(struct file *file, gfp_t gfp)
{
	char *temp, *pathname;

	if (!file)
		return FUNC4("<unknown>", gfp);

	/* We add 11 spaces for ' (deleted)' to be appended */
	temp = FUNC3(PATH_MAX + 11, GFP_KERNEL);
	if (!temp)
		return FUNC4("<no_memory>", gfp);

	pathname = FUNC1(file, temp, PATH_MAX + 11);
	if (FUNC0(pathname))
		pathname = FUNC4("<too_long>", gfp);
	else
		pathname = FUNC5(pathname, gfp);

	FUNC2(temp);
	return pathname;
}