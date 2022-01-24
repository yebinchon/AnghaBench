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
struct data__file {int /*<<< orphan*/  session; } ;
struct TYPE_2__ {int /*<<< orphan*/  range_num; int /*<<< orphan*/  range_size; int /*<<< orphan*/  ptime_range; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__ pdiff ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int FUNC3(struct data__file *d, char **pstr)
{
	char *p = *pstr;
	int ret;

	/*
	 * Absolute timestamp for one file has the format: a.b,c.d
	 * For multiple files, the format is: a.b,c.d:a.b,c.d
	 */
	p = FUNC2(*pstr, ':');
	if (p) {
		if (p == *pstr) {
			FUNC1("Invalid time string\n");
			return -EINVAL;
		}

		*p = 0;
		p++;
		if (*p == 0) {
			FUNC1("Invalid time string\n");
			return -EINVAL;
		}
	}

	ret = FUNC0(*pstr, d->session,
					  &pdiff.ptime_range,
					  &pdiff.range_size,
					  &pdiff.range_num);
	if (ret < 0)
		return ret;

	if (!p || *p == 0)
		*pstr = NULL;
	else
		*pstr = p;

	return ret;
}