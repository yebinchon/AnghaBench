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
struct TYPE_2__ {size_t st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ fd_map ; 
 int /*<<< orphan*/  file_append ; 
 size_t file_append_size ; 
 int /*<<< orphan*/  file_map ; 
 int /*<<< orphan*/  file_updated ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 TYPE_1__ sb ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 size_t FUNC6 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC7(const char *fname)
{
	char tmp_file[FUNC5(fname) + 4];
	size_t n;

	if (!file_updated)
		return 0;

	FUNC4(tmp_file, "%s.rc", fname);

	/*
	 * After reading the entire file into memory, delete it
	 * and write it back, to prevent weird side effects of modifying
	 * an object file in place.
	 */
	fd_map = FUNC1(tmp_file, O_WRONLY | O_TRUNC | O_CREAT, sb.st_mode);
	if (fd_map < 0) {
		FUNC2(fname);
		return -1;
	}
	n = FUNC6(fd_map, file_map, sb.st_size);
	if (n != sb.st_size) {
		FUNC2("write");
		FUNC0(fd_map);
		return -1;
	}
	if (file_append_size) {
		n = FUNC6(fd_map, file_append, file_append_size);
		if (n != file_append_size) {
			FUNC2("write");
			FUNC0(fd_map);
			return -1;
		}
	}
	FUNC0(fd_map);
	if (FUNC3(tmp_file, fname) < 0) {
		FUNC2(fname);
		return -1;
	}
	return 0;
}