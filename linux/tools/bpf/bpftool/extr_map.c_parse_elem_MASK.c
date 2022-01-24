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
struct bpf_map_info {int /*<<< orphan*/  type; } ;
typedef  int __u32 ;

/* Variables and functions */
 int BPF_ANY ; 
 int BPF_EXIST ; 
 int BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_map_info*,void*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** FUNC7 (char**,char*,void*,int) ; 
 int FUNC8 (int*,char***) ; 

__attribute__((used)) static int FUNC9(char **argv, struct bpf_map_info *info,
		      void *key, void *value, __u32 key_size, __u32 value_size,
		      __u32 *flags, __u32 **value_fd)
{
	if (!*argv) {
		if (!key && !value)
			return 0;
		FUNC5("did not find %s", key ? "key" : "value");
		return -1;
	}

	if (FUNC1(*argv, "key")) {
		if (!key) {
			if (key_size)
				FUNC5("duplicate key");
			else
				FUNC5("unnecessary key");
			return -1;
		}

		argv = FUNC7(argv + 1, "key", key, key_size);
		if (!argv)
			return -1;

		return FUNC9(argv, info, NULL, value, key_size, value_size,
				  flags, value_fd);
	} else if (FUNC1(*argv, "value")) {
		int fd;

		if (!value) {
			if (value_size)
				FUNC5("duplicate value");
			else
				FUNC5("unnecessary value");
			return -1;
		}

		argv++;

		if (FUNC2(info->type)) {
			int argc = 2;

			if (value_size != 4) {
				FUNC5("value smaller than 4B for map in map?");
				return -1;
			}
			if (!argv[0] || !argv[1]) {
				FUNC5("not enough value arguments for map in map");
				return -1;
			}

			fd = FUNC4(&argc, &argv);
			if (fd < 0)
				return -1;

			*value_fd = value;
			**value_fd = fd;
		} else if (FUNC3(info->type)) {
			int argc = 2;

			if (value_size != 4) {
				FUNC5("value smaller than 4B for map of progs?");
				return -1;
			}
			if (!argv[0] || !argv[1]) {
				FUNC5("not enough value arguments for map of progs");
				return -1;
			}
			if (FUNC1(*argv, "id"))
				FUNC6("Warning: updating program array via MAP_ID, make sure this map is kept open\n"
				       "         by some process or pinned otherwise update will be lost");

			fd = FUNC8(&argc, &argv);
			if (fd < 0)
				return -1;

			*value_fd = value;
			**value_fd = fd;
		} else {
			argv = FUNC7(argv, "value", value, value_size);
			if (!argv)
				return -1;

			FUNC0(info, value);
		}

		return FUNC9(argv, info, key, NULL, key_size, value_size,
				  flags, NULL);
	} else if (FUNC1(*argv, "any") || FUNC1(*argv, "noexist") ||
		   FUNC1(*argv, "exist")) {
		if (!flags) {
			FUNC5("flags specified multiple times: %s", *argv);
			return -1;
		}

		if (FUNC1(*argv, "any"))
			*flags = BPF_ANY;
		else if (FUNC1(*argv, "noexist"))
			*flags = BPF_NOEXIST;
		else if (FUNC1(*argv, "exist"))
			*flags = BPF_EXIST;

		return FUNC9(argv + 1, info, key, value, key_size,
				  value_size, NULL, value_fd);
	}

	FUNC5("expected key or value, got: %s", *argv);
	return -1;
}