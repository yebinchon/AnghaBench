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
struct stat {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  output_fd ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	char *path = FUNC0("header_page");
	struct stat st;
	int err = -EIO;

	if (!path) {
		FUNC1("can't get tracing/events/header_page");
		return -ENOMEM;
	}

	if (FUNC4(path, &st) < 0) {
		FUNC1("can't read '%s'", path);
		goto out;
	}

	if (FUNC5(output_fd, "header_page", 12) != 12) {
		FUNC1("can't write header_page\n");
		goto out;
	}

	if (FUNC3(path, 8) < 0) {
		FUNC1("can't record header_page file\n");
		goto out;
	}

	FUNC2(path);

	path = FUNC0("header_event");
	if (!path) {
		FUNC1("can't get tracing/events/header_event");
		err = -ENOMEM;
		goto out;
	}

	if (FUNC4(path, &st) < 0) {
		FUNC1("can't read '%s'", path);
		goto out;
	}

	if (FUNC5(output_fd, "header_event", 13) != 13) {
		FUNC1("can't write header_event\n");
		goto out;
	}

	if (FUNC3(path, 8) < 0) {
		FUNC1("can't record header_event file\n");
		goto out;
	}

	err = 0;
out:
	FUNC2(path);
	return err;
}