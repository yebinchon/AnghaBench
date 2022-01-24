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
struct bpf_map_info {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  BPF_OBJ_MAP ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int*) ; 
 int FUNC3 (int,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int*,char***,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  map_table ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int FUNC10 (int,struct bpf_map_info*) ; 
 int FUNC11 (int,struct bpf_map_info*) ; 
 scalar_t__ show_pinned ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(int argc, char **argv)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	__u32 id = 0;
	int err;
	int fd;

	if (show_pinned)
		FUNC4(&map_table, BPF_OBJ_MAP);

	if (argc == 2) {
		fd = FUNC8(&argc, &argv, &info, &len);
		if (fd < 0)
			return -1;

		if (json_output)
			return FUNC10(fd, &info);
		else
			return FUNC11(fd, &info);
	}

	if (argc)
		return FUNC0();

	if (json_output)
		FUNC7(json_wtr);
	while (true) {
		err = FUNC2(id, &id);
		if (err) {
			if (errno == ENOENT)
				break;
			FUNC9("can't get next map: %s%s", FUNC12(errno),
			      errno == EINVAL ? " -- kernel too old?" : "");
			break;
		}

		fd = FUNC1(id);
		if (fd < 0) {
			if (errno == ENOENT)
				continue;
			FUNC9("can't get map by id (%u): %s",
			      id, FUNC12(errno));
			break;
		}

		err = FUNC3(fd, &info, &len);
		if (err) {
			FUNC9("can't get map info: %s", FUNC12(errno));
			FUNC5(fd);
			break;
		}

		if (json_output)
			FUNC10(fd, &info);
		else
			FUNC11(fd, &info);
	}
	if (json_output)
		FUNC6(json_wtr);

	return errno == ENOENT ? 0 : -1;
}