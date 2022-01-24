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
struct bpf_map_info {int /*<<< orphan*/  key_size; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int*,char***,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char**,struct bpf_map_info*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(int argc, char **argv)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	void *key, *nextkey;
	int err;
	int fd;

	if (argc < 2)
		FUNC15();

	fd = FUNC9(&argc, &argv, &info, &len);
	if (fd < 0)
		return -1;

	key = FUNC8(info.key_size);
	nextkey = FUNC8(info.key_size);
	if (!key || !nextkey) {
		FUNC10("mem alloc failed");
		err = -1;
		goto exit_free;
	}

	if (argc) {
		err = FUNC11(argv, &info, key, NULL, info.key_size, 0,
				 NULL, NULL);
		if (err)
			goto exit_free;
	} else {
		FUNC3(key);
		key = NULL;
	}

	err = FUNC0(fd, key, nextkey);
	if (err) {
		FUNC10("can't get next key: %s", FUNC14(errno));
		goto exit_free;
	}

	if (json_output) {
		FUNC7(json_wtr);
		if (key) {
			FUNC5(json_wtr, "key");
			FUNC12(key, info.key_size);
		} else {
			FUNC6(json_wtr, "key");
		}
		FUNC5(json_wtr, "next_key");
		FUNC12(nextkey, info.key_size);
		FUNC4(json_wtr);
	} else {
		if (key) {
			FUNC13("key:\n");
			FUNC2(stdout, key, info.key_size, " ");
			FUNC13("\n");
		} else {
			FUNC13("key: None\n");
		}
		FUNC13("next key:\n");
		FUNC2(stdout, nextkey, info.key_size, " ");
		FUNC13("\n");
	}

exit_free:
	FUNC3(nextkey);
	FUNC3(key);
	FUNC1(fd);

	return err;
}