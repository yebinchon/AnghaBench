#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btf_type {int dummy; } ;
struct btf_header {int str_off; int str_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  str_sec_size; int /*<<< orphan*/  str_sec; int /*<<< orphan*/  raw_types; } ;
struct TYPE_3__ {int /*<<< orphan*/  str_sec_size; int /*<<< orphan*/  str_sec; int /*<<< orphan*/  raw_types; } ;
struct btf_dedup_test {char* descr; int /*<<< orphan*/  opts; TYPE_2__ expect; TYPE_1__ input; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,...) ; 
 int FUNC1 (struct btf*) ; 
 int FUNC2 (struct btf*) ; 
 int FUNC3 (struct btf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btf*) ; 
 int FUNC5 (struct btf*) ; 
 void* FUNC6 (struct btf*,int*) ; 
 struct btf* FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 struct btf_type* FUNC8 (struct btf*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,char const**) ; 
 int FUNC10 (struct btf_type const*) ; 
 struct btf_dedup_test* dedup_tests ; 
 int /*<<< orphan*/  FUNC11 (char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  hdr_tmpl ; 
 int FUNC14 (void*,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char const*,char const*) ; 
 size_t FUNC16 (char const*) ; 

__attribute__((used)) static int FUNC17(unsigned int test_num)
{
	const struct btf_dedup_test *test = &dedup_tests[test_num - 1];
	__u32 test_nr_types, expect_nr_types, test_btf_size, expect_btf_size;
	const struct btf_header *test_hdr, *expect_hdr;
	struct btf *test_btf = NULL, *expect_btf = NULL;
	const void *test_btf_data, *expect_btf_data;
	const char *ret_test_next_str, *ret_expect_next_str;
	const char *test_strs, *expect_strs;
	const char *test_str_cur, *test_str_end;
	const char *expect_str_cur, *expect_str_end;
	unsigned int raw_btf_size;
	void *raw_btf;
	int err = 0, i;

	FUNC12(stderr, "BTF dedup test[%u] (%s):", test_num, test->descr);

	raw_btf = FUNC9(&hdr_tmpl, test->input.raw_types,
				 test->input.str_sec, test->input.str_sec_size,
				 &raw_btf_size, &ret_test_next_str);
	if (!raw_btf)
		return -1;
	test_btf = FUNC7((__u8 *)raw_btf, raw_btf_size);
	FUNC13(raw_btf);
	if (FUNC0(FUNC1(test_btf), "invalid test_btf errno:%ld",
		  FUNC2(test_btf))) {
		err = -1;
		goto done;
	}

	raw_btf = FUNC9(&hdr_tmpl, test->expect.raw_types,
				 test->expect.str_sec,
				 test->expect.str_sec_size,
				 &raw_btf_size, &ret_expect_next_str);
	if (!raw_btf)
		return -1;
	expect_btf = FUNC7((__u8 *)raw_btf, raw_btf_size);
	FUNC13(raw_btf);
	if (FUNC0(FUNC1(expect_btf), "invalid expect_btf errno:%ld",
		  FUNC2(expect_btf))) {
		err = -1;
		goto done;
	}

	err = FUNC3(test_btf, NULL, &test->opts);
	if (FUNC0(err, "btf_dedup failed errno:%d", err)) {
		err = -1;
		goto done;
	}

	test_btf_data = FUNC6(test_btf, &test_btf_size);
	expect_btf_data = FUNC6(expect_btf, &expect_btf_size);
	if (FUNC0(test_btf_size != expect_btf_size,
		  "test_btf_size:%u != expect_btf_size:%u",
		  test_btf_size, expect_btf_size)) {
		err = -1;
		goto done;
	}

	test_hdr = test_btf_data;
	test_strs = test_btf_data + sizeof(*test_hdr) + test_hdr->str_off;
	expect_hdr = expect_btf_data;
	expect_strs = expect_btf_data + sizeof(*test_hdr) + expect_hdr->str_off;
	if (FUNC0(test_hdr->str_len != expect_hdr->str_len,
		  "test_hdr->str_len:%u != expect_hdr->str_len:%u",
		  test_hdr->str_len, expect_hdr->str_len)) {
		FUNC12(stderr, "\ntest strings:\n");
		FUNC11(test_strs, test_hdr->str_len);
		FUNC12(stderr, "\nexpected strings:\n");
		FUNC11(expect_strs, expect_hdr->str_len);
		err = -1;
		goto done;
	}

	test_str_cur = test_strs;
	test_str_end = test_strs + test_hdr->str_len;
	expect_str_cur = expect_strs;
	expect_str_end = expect_strs + expect_hdr->str_len;
	while (test_str_cur < test_str_end && expect_str_cur < expect_str_end) {
		size_t test_len, expect_len;

		test_len = FUNC16(test_str_cur);
		expect_len = FUNC16(expect_str_cur);
		if (FUNC0(test_len != expect_len,
			  "test_len:%zu != expect_len:%zu "
			  "(test_str:%s, expect_str:%s)",
			  test_len, expect_len, test_str_cur, expect_str_cur)) {
			err = -1;
			goto done;
		}
		if (FUNC0(FUNC15(test_str_cur, expect_str_cur),
			  "test_str:%s != expect_str:%s",
			  test_str_cur, expect_str_cur)) {
			err = -1;
			goto done;
		}
		test_str_cur += test_len + 1;
		expect_str_cur += expect_len + 1;
	}
	if (FUNC0(test_str_cur != test_str_end,
		  "test_str_cur:%p != test_str_end:%p",
		  test_str_cur, test_str_end)) {
		err = -1;
		goto done;
	}

	test_nr_types = FUNC5(test_btf);
	expect_nr_types = FUNC5(expect_btf);
	if (FUNC0(test_nr_types != expect_nr_types,
		  "test_nr_types:%u != expect_nr_types:%u",
		  test_nr_types, expect_nr_types)) {
		err = -1;
		goto done;
	}

	for (i = 1; i <= test_nr_types; i++) {
		const struct btf_type *test_type, *expect_type;
		int test_size, expect_size;

		test_type = FUNC8(test_btf, i);
		expect_type = FUNC8(expect_btf, i);
		test_size = FUNC10(test_type);
		expect_size = FUNC10(expect_type);

		if (FUNC0(test_size != expect_size,
			  "type #%d: test_size:%d != expect_size:%u",
			  i, test_size, expect_size)) {
			err = -1;
			goto done;
		}
		if (FUNC0(FUNC14((void *)test_type,
				 (void *)expect_type,
				 test_size),
			  "type #%d: contents differ", i)) {
			err = -1;
			goto done;
		}
	}

done:
	if (!err)
		FUNC12(stderr, "OK");
	if (!FUNC1(test_btf))
		FUNC4(test_btf);
	if (!FUNC1(expect_btf))
		FUNC4(expect_btf);

	return err;
}