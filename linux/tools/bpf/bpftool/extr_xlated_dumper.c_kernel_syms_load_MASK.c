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
struct kernel_sym {unsigned long address; int /*<<< orphan*/  name; } ;
struct dump_data {int sym_count; unsigned long address_call_base; struct kernel_sym* sym_mapping; } ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernel_sym*) ; 
 int /*<<< orphan*/  kernel_syms_cmp ; 
 int /*<<< orphan*/  FUNC4 (struct kernel_sym*,size_t,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct kernel_sym*,int,int) ; 
 int FUNC6 (char*,char*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(struct dump_data *dd)
{
	struct kernel_sym *sym;
	char buff[256];
	void *tmp, *address;
	FILE *fp;

	fp = FUNC2("/proc/kallsyms", "r");
	if (!fp)
		return;

	while (FUNC1(buff, sizeof(buff), fp)) {
		tmp = FUNC5(dd->sym_mapping, dd->sym_count + 1,
				   sizeof(*dd->sym_mapping));
		if (!tmp) {
out:
			FUNC3(dd->sym_mapping);
			dd->sym_mapping = NULL;
			FUNC0(fp);
			return;
		}
		dd->sym_mapping = tmp;
		sym = &dd->sym_mapping[dd->sym_count];
		if (FUNC6(buff, "%p %*c %s", &address, sym->name) != 2)
			continue;
		sym->address = (unsigned long)address;
		if (!FUNC7(sym->name, "__bpf_call_base")) {
			dd->address_call_base = sym->address;
			/* sysctl kernel.kptr_restrict was set */
			if (!sym->address)
				goto out;
		}
		if (sym->address)
			dd->sym_count++;
	}

	FUNC0(fp);

	FUNC4(dd->sym_mapping, dd->sym_count,
	      sizeof(*dd->sym_mapping), kernel_syms_cmp);
}