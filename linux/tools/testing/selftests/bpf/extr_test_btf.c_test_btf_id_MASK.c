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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct btf_get_info_test {int /*<<< orphan*/  str_sec_size; int /*<<< orphan*/  str_sec; int /*<<< orphan*/  raw_types; } ;
struct bpf_map_info {unsigned int btf_size; scalar_t__ id; scalar_t__ btf_id; int btf_key_type_id; int btf_value_type_id; int /*<<< orphan*/  btf; } ;
struct bpf_create_map_attr {char* name; int key_size; int value_size; int max_entries; int btf_fd; int btf_key_type_id; int btf_value_type_id; int /*<<< orphan*/  map_type; } ;
struct bpf_btf_info {unsigned int btf_size; scalar_t__ id; scalar_t__ btf_id; int btf_key_type_id; int btf_value_type_id; int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  map_info ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {scalar_t__ always_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 int /*<<< orphan*/  BTF_LOG_BUF_SIZE ; 
 scalar_t__ FUNC0 (int,char*,...) ; 
 TYPE_1__ args ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct bpf_create_map_attr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int,struct bpf_map_info*,int*) ; 
 char* btf_log_buf ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct btf_get_info_test* get_info_tests ; 
 int /*<<< orphan*/  hdr_tmpl ; 
 int /*<<< orphan*/ * FUNC9 (unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC12(unsigned int test_num)
{
	const struct btf_get_info_test *test = &get_info_tests[test_num - 1];
	struct bpf_create_map_attr create_attr = {};
	uint8_t *raw_btf = NULL, *user_btf[2] = {};
	int btf_fd[2] = {-1, -1}, map_fd = -1;
	struct bpf_map_info map_info = {};
	struct bpf_btf_info info[2] = {};
	unsigned int raw_btf_size;
	uint32_t info_len;
	int err, i, ret;

	raw_btf = FUNC5(&hdr_tmpl,
				 test->raw_types,
				 test->str_sec,
				 test->str_sec_size,
				 &raw_btf_size, NULL);

	if (!raw_btf)
		return -1;

	*btf_log_buf = '\0';

	for (i = 0; i < 2; i++) {
		user_btf[i] = FUNC9(raw_btf_size);
		if (FUNC0(!user_btf[i], "!user_btf[%d]", i)) {
			err = -1;
			goto done;
		}
		info[i].btf = FUNC11(user_btf[i]);
		info[i].btf_size = raw_btf_size;
	}

	btf_fd[0] = FUNC3(raw_btf, raw_btf_size,
				 btf_log_buf, BTF_LOG_BUF_SIZE,
				 args.always_log);
	if (FUNC0(btf_fd[0] == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	/* Test BPF_OBJ_GET_INFO_BY_ID on btf_id */
	info_len = sizeof(info[0]);
	err = FUNC4(btf_fd[0], &info[0], &info_len);
	if (FUNC0(err, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	btf_fd[1] = FUNC1(info[0].id);
	if (FUNC0(btf_fd[1] == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	ret = 0;
	err = FUNC4(btf_fd[1], &info[1], &info_len);
	if (FUNC0(err || info[0].id != info[1].id ||
		  info[0].btf_size != info[1].btf_size ||
		  (ret = FUNC10(user_btf[0], user_btf[1], info[0].btf_size)),
		  "err:%d errno:%d id0:%u id1:%u btf_size0:%u btf_size1:%u memcmp:%d",
		  err, errno, info[0].id, info[1].id,
		  info[0].btf_size, info[1].btf_size, ret)) {
		err = -1;
		goto done;
	}

	/* Test btf members in struct bpf_map_info */
	create_attr.name = "test_btf_id";
	create_attr.map_type = BPF_MAP_TYPE_ARRAY;
	create_attr.key_size = sizeof(int);
	create_attr.value_size = sizeof(unsigned int);
	create_attr.max_entries = 4;
	create_attr.btf_fd = btf_fd[0];
	create_attr.btf_key_type_id = 1;
	create_attr.btf_value_type_id = 2;

	map_fd = FUNC2(&create_attr);
	if (FUNC0(map_fd == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	info_len = sizeof(map_info);
	err = FUNC4(map_fd, &map_info, &info_len);
	if (FUNC0(err || map_info.btf_id != info[0].id ||
		  map_info.btf_key_type_id != 1 || map_info.btf_value_type_id != 2,
		  "err:%d errno:%d info.id:%u btf_id:%u btf_key_type_id:%u btf_value_type_id:%u",
		  err, errno, info[0].id, map_info.btf_id, map_info.btf_key_type_id,
		  map_info.btf_value_type_id)) {
		err = -1;
		goto done;
	}

	for (i = 0; i < 2; i++) {
		FUNC6(btf_fd[i]);
		btf_fd[i] = -1;
	}

	/* Test BTF ID is removed from the kernel */
	btf_fd[0] = FUNC1(map_info.btf_id);
	if (FUNC0(btf_fd[0] == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}
	FUNC6(btf_fd[0]);
	btf_fd[0] = -1;

	/* The map holds the last ref to BTF and its btf_id */
	FUNC6(map_fd);
	map_fd = -1;
	btf_fd[0] = FUNC1(map_info.btf_id);
	if (FUNC0(btf_fd[0] != -1, "BTF lingers")) {
		err = -1;
		goto done;
	}

	FUNC7(stderr, "OK");

done:
	if (*btf_log_buf && (err || args.always_log))
		FUNC7(stderr, "\n%s", btf_log_buf);

	FUNC8(raw_btf);
	if (map_fd != -1)
		FUNC6(map_fd);
	for (i = 0; i < 2; i++) {
		FUNC8(user_btf[i]);
		if (btf_fd[i] != -1)
			FUNC6(btf_fd[i]);
	}

	return err;
}