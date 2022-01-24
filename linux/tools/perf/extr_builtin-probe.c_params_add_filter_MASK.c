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
struct TYPE_2__ {scalar_t__ filter; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 TYPE_1__ params ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*,char const**) ; 
 int FUNC3 (scalar_t__,char const*,char const**) ; 

__attribute__((used)) static int FUNC4(const char *str)
{
	const char *err = NULL;
	int ret = 0;

	FUNC0("Add filter: %s\n", str);
	if (!params.filter) {
		params.filter = FUNC2(str, &err);
		if (!params.filter)
			ret = err ? -EINVAL : -ENOMEM;
	} else
		ret = FUNC3(params.filter, str, &err);

	if (ret == -EINVAL) {
		FUNC1("Filter parse error at %td.\n", err - str + 1);
		FUNC1("Source: \"%s\"\n", str);
		FUNC1("         %*c\n", (int)(err - str + 1), '^');
	}

	return ret;
}