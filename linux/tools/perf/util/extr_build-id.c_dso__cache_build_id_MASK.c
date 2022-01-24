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
struct machine {char* mmap_name; } ;
struct dso {char* long_name; int /*<<< orphan*/  nsinfo; int /*<<< orphan*/  build_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct dso*) ; 
 scalar_t__ FUNC2 (struct dso*) ; 
 int FUNC3 (struct dso*) ; 

__attribute__((used)) static int FUNC4(struct dso *dso, struct machine *machine)
{
	bool is_kallsyms = FUNC1(dso);
	bool is_vdso = FUNC3(dso);
	const char *name = dso->long_name;

	if (FUNC2(dso)) {
		is_kallsyms = true;
		name = machine->mmap_name;
	}
	return FUNC0(dso->build_id, sizeof(dso->build_id), name,
				     dso->nsinfo, is_kallsyms, is_vdso);
}