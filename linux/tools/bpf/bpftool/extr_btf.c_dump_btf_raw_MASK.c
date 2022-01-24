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
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (struct btf const*) ; 
 struct btf_type* FUNC1 (struct btf const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btf const*,int,struct btf_type const*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct btf *btf,
			__u32 *root_type_ids, int root_type_cnt)
{
	const struct btf_type *t;
	int i;

	if (json_output) {
		FUNC7(json_wtr);
		FUNC5(json_wtr, "types");
		FUNC6(json_wtr);
	}

	if (root_type_cnt) {
		for (i = 0; i < root_type_cnt; i++) {
			t = FUNC1(btf, root_type_ids[i]);
			FUNC2(btf, root_type_ids[i], t);
		}
	} else {
		int cnt = FUNC0(btf);

		for (i = 1; i <= cnt; i++) {
			t = FUNC1(btf, i);
			FUNC2(btf, i, t);
		}
	}

	if (json_output) {
		FUNC3(json_wtr);
		FUNC4(json_wtr);
	}
	return 0;
}