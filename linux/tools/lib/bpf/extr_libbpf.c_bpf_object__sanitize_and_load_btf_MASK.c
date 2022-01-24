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
struct bpf_object {int /*<<< orphan*/ * btf_ext; int /*<<< orphan*/ * btf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTF_ELF_SEC ; 
 scalar_t__ FUNC0 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct bpf_object *obj)
{
	int err = 0;

	if (!obj->btf)
		return 0;

	FUNC1(obj);
	FUNC2(obj);

	err = FUNC4(obj->btf);
	if (err) {
		FUNC6("Error loading %s into kernel: %d.\n",
			   BTF_ELF_SEC, err);
		FUNC3(obj->btf);
		obj->btf = NULL;
		/* btf_ext can't exist without btf, so free it as well */
		if (obj->btf_ext) {
			FUNC5(obj->btf_ext);
			obj->btf_ext = NULL;
		}

		if (FUNC0(obj))
			return err;
	}
	return 0;
}