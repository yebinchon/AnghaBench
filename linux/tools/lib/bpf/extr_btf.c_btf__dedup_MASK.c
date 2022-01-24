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
struct btf_ext {int dummy; } ;
struct btf_dedup_opts {int dummy; } ;
struct btf_dedup {int dummy; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct btf_dedup*) ; 
 int FUNC1 (struct btf_dedup*) ; 
 int FUNC2 (struct btf_dedup*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_dedup*) ; 
 struct btf_dedup* FUNC4 (struct btf*,struct btf_ext*,struct btf_dedup_opts const*) ; 
 int FUNC5 (struct btf_dedup*) ; 
 int FUNC6 (struct btf_dedup*) ; 
 int FUNC7 (struct btf_dedup*) ; 
 int FUNC8 (struct btf_dedup*) ; 
 int FUNC9 (struct btf_dedup*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

int FUNC11(struct btf *btf, struct btf_ext *btf_ext,
	       const struct btf_dedup_opts *opts)
{
	struct btf_dedup *d = FUNC4(btf, btf_ext, opts);
	int err;

	if (FUNC0(d)) {
		FUNC10("btf_dedup_new failed: %ld", FUNC1(d));
		return -EINVAL;
	}

	err = FUNC8(d);
	if (err < 0) {
		FUNC10("btf_dedup_strings failed:%d\n", err);
		goto done;
	}
	err = FUNC5(d);
	if (err < 0) {
		FUNC10("btf_dedup_prim_types failed:%d\n", err);
		goto done;
	}
	err = FUNC9(d);
	if (err < 0) {
		FUNC10("btf_dedup_struct_types failed:%d\n", err);
		goto done;
	}
	err = FUNC6(d);
	if (err < 0) {
		FUNC10("btf_dedup_ref_types failed:%d\n", err);
		goto done;
	}
	err = FUNC2(d);
	if (err < 0) {
		FUNC10("btf_dedup_compact_types failed:%d\n", err);
		goto done;
	}
	err = FUNC7(d);
	if (err < 0) {
		FUNC10("btf_dedup_remap_types failed:%d\n", err);
		goto done;
	}

done:
	FUNC3(d);
	return err;
}