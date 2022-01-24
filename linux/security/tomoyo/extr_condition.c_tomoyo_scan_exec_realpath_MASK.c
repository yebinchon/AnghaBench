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
struct tomoyo_path_info {int /*<<< orphan*/  name; } ;
struct tomoyo_name_union {int dummy; } ;
struct file {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tomoyo_path_info*,struct tomoyo_name_union const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tomoyo_path_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct file *file,
				      const struct tomoyo_name_union *ptr,
				      const bool match)
{
	bool result;
	struct tomoyo_path_info exe;

	if (!file)
		return false;
	exe.name = FUNC3(&file->f_path);
	if (!exe.name)
		return false;
	FUNC2(&exe);
	result = FUNC1(&exe, ptr);
	FUNC0(exe.name);
	return result == match;
}