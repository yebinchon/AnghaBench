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
typedef  char* __u32 ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  BPF_OBJ_PROG ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int FUNC8 (int*,char***) ; 
 int /*<<< orphan*/  prog_table ; 
 scalar_t__ show_pinned ; 
 int FUNC9 (int) ; 
 char* FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(int argc, char **argv)
{
	__u32 id = 0;
	int err;
	int fd;

	if (show_pinned)
		FUNC3(&prog_table, BPF_OBJ_PROG);

	if (argc == 2) {
		fd = FUNC8(&argc, &argv);
		if (fd < 0)
			return -1;

		err = FUNC9(fd);
		FUNC4(fd);
		return err;
	}

	if (argc)
		return FUNC0();

	if (json_output)
		FUNC6(json_wtr);
	while (true) {
		err = FUNC2(id, &id);
		if (err) {
			if (errno == ENOENT) {
				err = 0;
				break;
			}
			FUNC7("can't get next program: %s%s", FUNC10(errno),
			      errno == EINVAL ? " -- kernel too old?" : "");
			err = -1;
			break;
		}

		fd = FUNC1(id);
		if (fd < 0) {
			if (errno == ENOENT)
				continue;
			FUNC7("can't get prog by id (%u): %s",
			      id, FUNC10(errno));
			err = -1;
			break;
		}

		err = FUNC9(fd);
		FUNC4(fd);
		if (err)
			break;
	}

	if (json_output)
		FUNC5(json_wtr);

	return err;
}