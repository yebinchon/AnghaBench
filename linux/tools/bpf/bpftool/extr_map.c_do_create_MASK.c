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
struct bpf_create_map_attr {void* name; scalar_t__ map_ifindex; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; scalar_t__ map_type; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct bpf_create_map_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int*,char***,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(int argc, char **argv)
{
	struct bpf_create_map_attr attr = { NULL, };
	const char *pinfile;
	int err, fd;

	if (!FUNC2(7))
		return -1;
	pinfile = FUNC0();

	while (argc) {
		if (!FUNC2(2))
			return -1;

		if (FUNC7(*argv, "type")) {
			FUNC1();

			if (attr.map_type) {
				FUNC10("map type already specified");
				return -1;
			}

			attr.map_type = FUNC9(*argv);
			if ((int)attr.map_type < 0) {
				FUNC10("unrecognized map type: %s", *argv);
				return -1;
			}
			FUNC1();
		} else if (FUNC7(*argv, "name")) {
			FUNC1();
			attr.name = FUNC0();
		} else if (FUNC7(*argv, "key")) {
			if (FUNC11(&argc, &argv, &attr.key_size,
					  "key size"))
				return -1;
		} else if (FUNC7(*argv, "value")) {
			if (FUNC11(&argc, &argv, &attr.value_size,
					  "value size"))
				return -1;
		} else if (FUNC7(*argv, "entries")) {
			if (FUNC11(&argc, &argv, &attr.max_entries,
					  "max entries"))
				return -1;
		} else if (FUNC7(*argv, "flags")) {
			if (FUNC11(&argc, &argv, &attr.map_flags,
					  "flags"))
				return -1;
		} else if (FUNC7(*argv, "dev")) {
			FUNC1();

			if (attr.map_ifindex) {
				FUNC10("offload device already specified");
				return -1;
			}

			attr.map_ifindex = FUNC6(*argv);
			if (!attr.map_ifindex) {
				FUNC10("unrecognized netdevice '%s': %s",
				      *argv, FUNC13(errno));
				return -1;
			}
			FUNC1();
		} else {
			FUNC10("unknown arg %s", *argv);
			return -1;
		}
	}

	if (!attr.name) {
		FUNC10("map name not specified");
		return -1;
	}

	FUNC12();

	fd = FUNC3(&attr);
	if (fd < 0) {
		FUNC10("map create failed: %s", FUNC13(errno));
		return -1;
	}

	err = FUNC5(fd, pinfile);
	FUNC4(fd);
	if (err)
		return err;

	if (json_output)
		FUNC8(json_wtr);
	return 0;
}