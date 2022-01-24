#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 TYPE_1__ subcmd_config ; 

char *FUNC3(const char *path)
{
	char *buf = NULL;

	if (FUNC1(path))
		return FUNC2(path);

	FUNC0(&buf, "%s/%s", subcmd_config.prefix, path);

	return buf;
}