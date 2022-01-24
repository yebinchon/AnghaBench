#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct btf_raw_test {char* descr; int btf_load_err; int map_create_err; int /*<<< orphan*/  value_type_id; int /*<<< orphan*/  key_type_id; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_type; int /*<<< orphan*/  map_name; int /*<<< orphan*/  err_str; scalar_t__ str_len_delta; scalar_t__ str_off_delta; scalar_t__ type_off_delta; scalar_t__ hdr_len_delta; int /*<<< orphan*/  str_sec_size; int /*<<< orphan*/  str_sec; int /*<<< orphan*/  raw_types; } ;
struct btf_header {scalar_t__ str_len; scalar_t__ str_off; scalar_t__ type_off; scalar_t__ hdr_len; } ;
struct bpf_create_map_attr {int btf_fd; int /*<<< orphan*/  btf_value_type_id; int /*<<< orphan*/  btf_key_type_id; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_type; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ always_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTF_LOG_BUF_SIZE ; 
 scalar_t__ FUNC0 (int,char*,int,...) ; 
 TYPE_1__ args ; 
 int FUNC1 (struct bpf_create_map_attr*) ; 
 int FUNC2 (void*,unsigned int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* btf_log_buf ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  hdr_tmpl ; 
 struct btf_raw_test* raw_tests ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(unsigned int test_num)
{
	struct btf_raw_test *test = &raw_tests[test_num - 1];
	struct bpf_create_map_attr create_attr = {};
	int map_fd = -1, btf_fd = -1;
	unsigned int raw_btf_size;
	struct btf_header *hdr;
	void *raw_btf;
	int err;

	FUNC5(stderr, "BTF raw test[%u] (%s): ", test_num, test->descr);
	raw_btf = FUNC3(&hdr_tmpl,
				 test->raw_types,
				 test->str_sec,
				 test->str_sec_size,
				 &raw_btf_size, NULL);

	if (!raw_btf)
		return -1;

	hdr = raw_btf;

	hdr->hdr_len = (int)hdr->hdr_len + test->hdr_len_delta;
	hdr->type_off = (int)hdr->type_off + test->type_off_delta;
	hdr->str_off = (int)hdr->str_off + test->str_off_delta;
	hdr->str_len = (int)hdr->str_len + test->str_len_delta;

	*btf_log_buf = '\0';
	btf_fd = FUNC2(raw_btf, raw_btf_size,
			      btf_log_buf, BTF_LOG_BUF_SIZE,
			      args.always_log);
	FUNC6(raw_btf);

	err = ((btf_fd == -1) != test->btf_load_err);
	if (FUNC0(err, "btf_fd:%d test->btf_load_err:%u",
		  btf_fd, test->btf_load_err) ||
	    FUNC0(test->err_str && !FUNC7(btf_log_buf, test->err_str),
		  "expected err_str:%s", test->err_str)) {
		err = -1;
		goto done;
	}

	if (err || btf_fd == -1)
		goto done;

	create_attr.name = test->map_name;
	create_attr.map_type = test->map_type;
	create_attr.key_size = test->key_size;
	create_attr.value_size = test->value_size;
	create_attr.max_entries = test->max_entries;
	create_attr.btf_fd = btf_fd;
	create_attr.btf_key_type_id = test->key_type_id;
	create_attr.btf_value_type_id = test->value_type_id;

	map_fd = FUNC1(&create_attr);

	err = ((map_fd == -1) != test->map_create_err);
	FUNC0(err, "map_fd:%d test->map_create_err:%u",
	      map_fd, test->map_create_err);

done:
	if (!err)
		FUNC5(stderr, "OK");

	if (*btf_log_buf && (err || args.always_log))
		FUNC5(stderr, "\n%s", btf_log_buf);

	if (btf_fd != -1)
		FUNC4(btf_fd);
	if (map_fd != -1)
		FUNC4(map_fd);

	return err;
}