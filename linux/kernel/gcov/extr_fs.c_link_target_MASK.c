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
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static char *FUNC4(const char *dir, const char *path, const char *ext)
{
	char *target;
	char *old_ext;
	char *copy;

	copy = FUNC2(path, GFP_KERNEL);
	if (!copy)
		return NULL;
	old_ext = FUNC3(copy, '.');
	if (old_ext)
		*old_ext = '\0';
	if (dir)
		target = FUNC0(GFP_KERNEL, "%s/%s.%s", dir, copy, ext);
	else
		target = FUNC0(GFP_KERNEL, "%s.%s", copy, ext);
	FUNC1(copy);

	return target;
}