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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct btf_get_info_test {char* descr; int (* special_test ) (unsigned int) ;int btf_size_delta; int /*<<< orphan*/  str_sec_size; int /*<<< orphan*/  str_sec; int /*<<< orphan*/  raw_types; } ;
struct bpf_btf_info {unsigned int btf_size; int /*<<< orphan*/  id; int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {scalar_t__ always_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTF_LOG_BUF_SIZE ; 
 scalar_t__ FUNC0 (int,char*,...) ; 
 TYPE_1__ args ; 
 int FUNC1 (int*,unsigned int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int,struct bpf_btf_info*,int*) ; 
 char* btf_log_buf ; 
 int* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 struct btf_get_info_test* get_info_tests ; 
 int /*<<< orphan*/  hdr_tmpl ; 
 int* FUNC7 (unsigned int) ; 
 int FUNC8 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,unsigned int) ; 
 unsigned int FUNC10 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC12 (unsigned int) ; 

__attribute__((used)) static int FUNC13(unsigned int test_num)
{
	const struct btf_get_info_test *test = &get_info_tests[test_num - 1];
	unsigned int raw_btf_size, user_btf_size, expected_nbytes;
	uint8_t *raw_btf = NULL, *user_btf = NULL;
	struct bpf_btf_info info = {};
	int btf_fd = -1, err, ret;
	uint32_t info_len;

	FUNC5(stderr, "BTF GET_INFO test[%u] (%s): ",
		test_num, test->descr);

	if (test->special_test)
		return test->special_test(test_num);

	raw_btf = FUNC3(&hdr_tmpl,
				 test->raw_types,
				 test->str_sec,
				 test->str_sec_size,
				 &raw_btf_size, NULL);

	if (!raw_btf)
		return -1;

	*btf_log_buf = '\0';

	user_btf = FUNC7(raw_btf_size);
	if (FUNC0(!user_btf, "!user_btf")) {
		err = -1;
		goto done;
	}

	btf_fd = FUNC1(raw_btf, raw_btf_size,
			      btf_log_buf, BTF_LOG_BUF_SIZE,
			      args.always_log);
	if (FUNC0(btf_fd == -1, "errno:%d", errno)) {
		err = -1;
		goto done;
	}

	user_btf_size = (int)raw_btf_size + test->btf_size_delta;
	expected_nbytes = FUNC10(raw_btf_size, user_btf_size);
	if (raw_btf_size > expected_nbytes)
		FUNC9(user_btf + expected_nbytes, 0xff,
		       raw_btf_size - expected_nbytes);

	info_len = sizeof(info);
	info.btf = FUNC11(user_btf);
	info.btf_size = user_btf_size;

	ret = 0;
	err = FUNC2(btf_fd, &info, &info_len);
	if (FUNC0(err || !info.id || info_len != sizeof(info) ||
		  info.btf_size != raw_btf_size ||
		  (ret = FUNC8(raw_btf, user_btf, expected_nbytes)),
		  "err:%d errno:%d info.id:%u info_len:%u sizeof(info):%lu raw_btf_size:%u info.btf_size:%u expected_nbytes:%u memcmp:%d",
		  err, errno, info.id, info_len, sizeof(info),
		  raw_btf_size, info.btf_size, expected_nbytes, ret)) {
		err = -1;
		goto done;
	}

	while (expected_nbytes < raw_btf_size) {
		FUNC5(stderr, "%u...", expected_nbytes);
		if (FUNC0(user_btf[expected_nbytes++] != 0xff,
			  "user_btf[%u]:%x != 0xff", expected_nbytes - 1,
			  user_btf[expected_nbytes - 1])) {
			err = -1;
			goto done;
		}
	}

	FUNC5(stderr, "OK");

done:
	if (*btf_log_buf && (err || args.always_log))
		FUNC5(stderr, "\n%s", btf_log_buf);

	FUNC6(raw_btf);
	FUNC6(user_btf);

	if (btf_fd != -1)
		FUNC4(btf_fd);

	return err;
}