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
struct bpf_program {struct bpf_object* obj; int /*<<< orphan*/  section_name; int /*<<< orphan*/ * caps; } ;
struct bpf_object {int nr_programs; struct bpf_program* programs; int /*<<< orphan*/  caps; } ;
typedef  int /*<<< orphan*/  progs ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_program*) ; 
 int FUNC1 (void*,size_t,char*,int,struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 struct bpf_program* FUNC4 (struct bpf_program*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct bpf_object *obj, void *data, size_t size,
			char *section_name, int idx)
{
	struct bpf_program prog, *progs;
	int nr_progs, err;

	err = FUNC1(data, size, section_name, idx, &prog);
	if (err)
		return err;

	prog.caps = &obj->caps;
	progs = obj->programs;
	nr_progs = obj->nr_programs;

	progs = FUNC4(progs, nr_progs + 1, sizeof(progs[0]));
	if (!progs) {
		/*
		 * In this case the original obj->programs
		 * is still valid, so don't need special treat for
		 * bpf_close_object().
		 */
		FUNC3("failed to alloc a new program under section '%s'\n",
			   section_name);
		FUNC0(&prog);
		return -ENOMEM;
	}

	FUNC2("found program %s\n", prog.section_name);
	obj->programs = progs;
	obj->nr_programs = nr_progs + 1;
	prog.obj = obj;
	progs[nr_progs] = prog;
	return 0;
}