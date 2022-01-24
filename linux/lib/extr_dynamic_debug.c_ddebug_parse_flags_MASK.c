#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const opt_char; unsigned int flag; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* opt_array ; 
 int /*<<< orphan*/  FUNC1 (char*,char const,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC3(const char *str, unsigned int *flagsp,
			       unsigned int *maskp)
{
	unsigned flags = 0;
	int op = '=', i;

	switch (*str) {
	case '+':
	case '-':
	case '=':
		op = *str++;
		break;
	default:
		FUNC1("bad flag-op %c, at start of %s\n", *str, str);
		return -EINVAL;
	}
	FUNC2("op='%c'\n", op);

	for (; *str ; ++str) {
		for (i = FUNC0(opt_array) - 1; i >= 0; i--) {
			if (*str == opt_array[i].opt_char) {
				flags |= opt_array[i].flag;
				break;
			}
		}
		if (i < 0) {
			FUNC1("unknown flag '%c' in \"%s\"\n", *str, str);
			return -EINVAL;
		}
	}
	FUNC2("flags=0x%x\n", flags);

	/* calculate final *flagsp, *maskp according to mask and op */
	switch (op) {
	case '=':
		*maskp = 0;
		*flagsp = flags;
		break;
	case '+':
		*maskp = ~0U;
		*flagsp = flags;
		break;
	case '-':
		*maskp = ~flags;
		*flagsp = 0;
		break;
	}
	FUNC2("*flagsp=0x%x *maskp=0x%x\n", *flagsp, *maskp);
	return 0;
}