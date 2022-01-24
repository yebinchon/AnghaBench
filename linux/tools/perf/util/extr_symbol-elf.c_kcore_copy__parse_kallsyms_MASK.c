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
 scalar_t__ FUNC0 (char*,struct kcore_copy_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcore_copy__process_kallsyms ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct kcore_copy_info *kci,
				      const char *dir)
{
	char kallsyms_filename[PATH_MAX];

	FUNC1(kallsyms_filename, PATH_MAX, "%s/kallsyms", dir);

	if (FUNC2(kallsyms_filename, "/proc/kallsyms"))
		return -1;

	if (FUNC0(kallsyms_filename, kci,
			    kcore_copy__process_kallsyms) < 0)
		return -1;

	return 0;
}