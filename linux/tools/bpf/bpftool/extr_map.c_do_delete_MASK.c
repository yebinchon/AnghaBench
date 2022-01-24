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
 int FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,char***,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (char**,struct bpf_map_info*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(int argc, char **argv)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	void *key;
	int err;
	int fd;

	if (argc < 2)
		FUNC9();

	fd = FUNC5(&argc, &argv, &info, &len);
	if (fd < 0)
		return -1;

	key = FUNC4(info.key_size);
	if (!key) {
		FUNC6("mem alloc failed");
		err = -1;
		goto exit_free;
	}

	err = FUNC7(argv, &info, key, NULL, info.key_size, 0, NULL, NULL);
	if (err)
		goto exit_free;

	err = FUNC0(fd, key);
	if (err)
		FUNC6("delete failed: %s", FUNC8(errno));

exit_free:
	FUNC2(key);
	FUNC1(fd);

	if (!err && json_output)
		FUNC3(json_wtr);
	return err;
}