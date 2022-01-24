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
struct addr_filters {int dummy; } ;
struct addr_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addr_filter*) ; 
 struct addr_filter* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct addr_filters*,struct addr_filter*) ; 
 int /*<<< orphan*/  FUNC3 (struct addr_filters*) ; 
 int FUNC4 (struct addr_filter*,char const**) ; 

int FUNC5(struct addr_filters *filts,
				    const char *filter)
{
	struct addr_filter *filt;
	const char *fstr = filter;
	int err;

	while (*fstr) {
		filt = FUNC1();
		err = FUNC4(filt, &fstr);
		if (err) {
			FUNC0(filt);
			FUNC3(filts);
			return err;
		}
		FUNC2(filts, filt);
	}

	return 0;
}