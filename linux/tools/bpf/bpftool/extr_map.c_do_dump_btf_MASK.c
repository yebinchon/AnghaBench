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
struct btf_dumper {int /*<<< orphan*/  jw; } ;
struct bpf_map_info {scalar_t__ btf_value_type_id; int /*<<< orphan*/  value_size; int /*<<< orphan*/  type; scalar_t__ btf_key_type_id; } ;

/* Variables and functions */
 int FUNC0 (struct btf_dumper const*,scalar_t__,void*) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(const struct btf_dumper *d,
		       struct bpf_map_info *map_info, void *key,
		       void *value)
{
	int ret;

	/* start of key-value pair */
	FUNC7(d->jw);

	if (map_info->btf_key_type_id) {
		FUNC5(d->jw, "key");

		ret = FUNC0(d, map_info->btf_key_type_id, key);
		if (ret)
			goto err_end_obj;
	}

	if (!FUNC8(map_info->type)) {
		FUNC5(d->jw, "value");
		ret = FUNC0(d, map_info->btf_value_type_id, value);
	} else {
		unsigned int i, n, step;

		FUNC5(d->jw, "values");
		FUNC6(d->jw);
		n = FUNC1();
		step = FUNC9(map_info->value_size, 8);
		for (i = 0; i < n; i++) {
			FUNC7(d->jw);
			FUNC4(d->jw, "cpu", i);
			FUNC5(d->jw, "value");
			ret = FUNC0(d, map_info->btf_value_type_id,
					      value + i * step);
			FUNC3(d->jw);
			if (ret)
				break;
		}
		FUNC2(d->jw);
	}

err_end_obj:
	/* end of key-value pair */
	FUNC3(d->jw);

	return ret;
}