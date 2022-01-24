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
typedef  int /*<<< orphan*/  u64 ;
struct dso {scalar_t__ a2l_fails; scalar_t__ has_srcline; } ;

/* Variables and functions */
 scalar_t__ A2L_FAIL_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char**,unsigned int*,struct dso*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*) ; 
 char* FUNC2 (struct dso*) ; 

char *FUNC3(struct dso *dso, u64 addr, unsigned *line)
{
	char *file = NULL;
	const char *dso_name;

	if (!dso->has_srcline)
		goto out;

	dso_name = FUNC2(dso);
	if (dso_name == NULL)
		goto out;

	if (!FUNC0(dso_name, addr, &file, line, dso, true, NULL, NULL))
		goto out;

	dso->a2l_fails = 0;
	return file;

out:
	if (dso->a2l_fails && ++dso->a2l_fails > A2L_FAIL_LIMIT) {
		dso->has_srcline = 0;
		FUNC1(dso);
	}

	return NULL;
}