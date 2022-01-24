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
struct ksym {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {long addr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  ksym_cmp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*,void**,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int sym_cnt ; 
 TYPE_1__* syms ; 

int FUNC6(void)
{
	FILE *f = FUNC2("/proc/kallsyms", "r");
	char func[256], buf[256];
	char symbol;
	void *addr;
	int i = 0;

	if (!f)
		return -ENOENT;

	while (FUNC1(buf, sizeof(buf), f)) {
		if (FUNC4(buf, "%p %c %s", &addr, &symbol, func) != 3)
			break;
		if (!addr)
			continue;
		syms[i].addr = (long) addr;
		syms[i].name = FUNC5(func);
		i++;
	}
	FUNC0(f);
	sym_cnt = i;
	FUNC3(syms, sym_cnt, sizeof(struct ksym), ksym_cmp);
	return 0;
}