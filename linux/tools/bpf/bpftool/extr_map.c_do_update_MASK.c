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
struct bpf_map_info {int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int BPF_ANY ; 
 int FUNC0 (struct bpf_map_info*,void**,void**) ; 
 int FUNC1 (int,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,char***,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char**,struct bpf_map_info*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(int argc, char **argv)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	__u32 *value_fd = NULL;
	__u32 flags = BPF_ANY;
	void *key, *value;
	int fd, err;

	if (argc < 2)
		FUNC9();

	fd = FUNC5(&argc, &argv, &info, &len);
	if (fd < 0)
		return -1;

	err = FUNC0(&info, &key, &value);
	if (err)
		goto exit_free;

	err = FUNC7(argv, &info, key, value, info.key_size,
			 info.value_size, &flags, &value_fd);
	if (err)
		goto exit_free;

	err = FUNC1(fd, key, value, flags);
	if (err) {
		FUNC6("update failed: %s", FUNC8(errno));
		goto exit_free;
	}

exit_free:
	if (value_fd)
		FUNC2(*value_fd);
	FUNC3(key);
	FUNC3(value);
	FUNC2(fd);

	if (!err && json_output)
		FUNC4(json_wtr);
	return err;
}