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
struct map_groups {int dummy; } ;
struct map {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,struct map_groups*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 struct map_groups* FUNC2 (struct map*) ; 

__attribute__((used)) static int FUNC3(const char *kallsyms_filename,
				  struct map *map)
{
	struct map_groups *kmaps = FUNC2(map);
	char modules_filename[PATH_MAX];

	if (!kmaps)
		return -EINVAL;

	if (!FUNC1(modules_filename, "modules",
					     kallsyms_filename))
		return -EINVAL;

	if (FUNC0(modules_filename, kmaps))
		return -EINVAL;

	return 0;
}