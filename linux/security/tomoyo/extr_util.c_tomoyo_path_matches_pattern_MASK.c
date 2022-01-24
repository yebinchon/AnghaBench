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
struct tomoyo_path_info {char* name; int const_len; scalar_t__ is_dir; int /*<<< orphan*/  is_patterned; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int const) ; 
 int FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tomoyo_path_info const*,struct tomoyo_path_info const*) ; 

bool FUNC3(const struct tomoyo_path_info *filename,
				 const struct tomoyo_path_info *pattern)
{
	const char *f = filename->name;
	const char *p = pattern->name;
	const int len = pattern->const_len;

	/* If @pattern doesn't contain pattern, I can use strcmp(). */
	if (!pattern->is_patterned)
		return !FUNC2(filename, pattern);
	/* Don't compare directory and non-directory. */
	if (filename->is_dir != pattern->is_dir)
		return false;
	/* Compare the initial length without patterns. */
	if (FUNC0(f, p, len))
		return false;
	f += len;
	p += len;
	return FUNC1(f, p);
}