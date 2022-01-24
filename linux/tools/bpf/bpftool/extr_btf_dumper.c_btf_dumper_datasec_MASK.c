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
struct btf_var_secinfo {int offset; int /*<<< orphan*/  type; } ;
struct btf_type {int /*<<< orphan*/  name_off; int /*<<< orphan*/  info; } ;
struct btf_dumper {int /*<<< orphan*/  jw; int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct btf_dumper const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct btf_dumper *d, __u32 type_id,
			      const void *data)
{
	struct btf_var_secinfo *vsi;
	const struct btf_type *t;
	int ret = 0, i, vlen;

	t = FUNC2(d->btf, type_id);
	if (!t)
		return -EINVAL;

	vlen = FUNC0(t->info);
	vsi = (struct btf_var_secinfo *)(t + 1);

	FUNC8(d->jw);
	FUNC6(d->jw, FUNC1(d->btf, t->name_off));
	FUNC7(d->jw);
	for (i = 0; i < vlen; i++) {
		ret = FUNC3(d, vsi[i].type, 0, data + vsi[i].offset);
		if (ret)
			break;
	}
	FUNC4(d->jw);
	FUNC5(d->jw);

	return ret;
}