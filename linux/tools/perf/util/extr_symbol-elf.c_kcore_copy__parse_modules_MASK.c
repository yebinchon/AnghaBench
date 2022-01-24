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
struct kcore_copy_info {int dummy; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  kcore_copy__process_modules ; 
 scalar_t__ FUNC0 (char*,struct kcore_copy_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct kcore_copy_info *kci,
				     const char *dir)
{
	char modules_filename[PATH_MAX];

	FUNC1(modules_filename, PATH_MAX, "%s/modules", dir);

	if (FUNC2(modules_filename, "/proc/modules"))
		return -1;

	if (FUNC0(modules_filename, kci,
			   kcore_copy__process_modules) < 0)
		return -1;

	return 0;
}