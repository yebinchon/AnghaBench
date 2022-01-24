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
typedef  scalar_t__ u64 ;
struct symbol {scalar_t__ start; scalar_t__ end; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct symbol* FUNC0 (struct dso*) ; 
 struct symbol* FUNC1 (struct symbol*) ; 
 scalar_t__ FUNC2 (struct symbol*,char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dso*,char const*) ; 
 int FUNC4 (char const*,int) ; 

__attribute__((used)) static int FUNC5(struct dso *dso, const char *sym_name, u64 *start,
			u64 *size, int idx)
{
	struct symbol *sym;
	int cnt = 0;

	*start = 0;
	*size = 0;

	sym = FUNC0(dso);
	while (sym) {
		if (*start) {
			if (!*size)
				*size = sym->start - *start;
			if (idx > 0) {
				if (*size)
					return 1;
			} else if (FUNC2(sym, sym_name, &cnt, idx)) {
				FUNC3(dso, sym_name);
				return -EINVAL;
			}
		} else if (FUNC2(sym, sym_name, &cnt, idx)) {
			*start = sym->start;
			*size = sym->end - sym->start;
		}
		sym = FUNC1(sym);
	}

	if (!*start)
		return FUNC4(sym_name, idx);

	return 0;
}