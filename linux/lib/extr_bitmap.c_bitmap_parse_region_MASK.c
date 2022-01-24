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
struct region {scalar_t__ end; scalar_t__ group_len; scalar_t__ off; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char const* FUNC2 (char const*,scalar_t__*) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 

__attribute__((used)) static const char *FUNC5(const char *str, struct region *r)
{
	str = FUNC2(str, &r->start);
	if (FUNC1(str))
		return str;

	if (FUNC3(*str))
		goto no_end;

	if (*str != '-')
		return FUNC0(-EINVAL);

	str = FUNC2(str + 1, &r->end);
	if (FUNC1(str))
		return str;

	if (FUNC3(*str))
		goto no_pattern;

	if (*str != ':')
		return FUNC0(-EINVAL);

	str = FUNC2(str + 1, &r->off);
	if (FUNC1(str))
		return str;

	if (*str != '/')
		return FUNC0(-EINVAL);

	return FUNC2(str + 1, &r->group_len);

no_end:
	r->end = r->start;
no_pattern:
	r->off = r->end + 1;
	r->group_len = r->end + 1;

	return FUNC4(*str) ? NULL : str;
}