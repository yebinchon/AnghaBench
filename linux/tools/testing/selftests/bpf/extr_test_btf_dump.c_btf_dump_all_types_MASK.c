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
struct btf_dump_opts {int dummy; } ;
struct btf_dump {int dummy; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btf_dump*) ; 
 int FUNC1 (struct btf_dump*) ; 
 size_t FUNC2 (struct btf const*) ; 
 int FUNC3 (struct btf_dump*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_dump*) ; 
 struct btf_dump* FUNC5 (struct btf const*,int /*<<< orphan*/ *,struct btf_dump_opts const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btf_dump_printf ; 

__attribute__((used)) static int FUNC6(const struct btf *btf,
			      const struct btf_dump_opts *opts)
{
	size_t type_cnt = FUNC2(btf);
	struct btf_dump *d;
	int err = 0, id;

	d = FUNC5(btf, NULL, opts, btf_dump_printf);
	if (FUNC0(d))
		return FUNC1(d);

	for (id = 1; id <= type_cnt; id++) {
		err = FUNC3(d, id);
		if (err)
			goto done;
	}

done:
	FUNC4(d);
	return err;
}