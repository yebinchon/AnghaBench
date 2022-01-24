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
struct stat {int st_mode; int st_nlink; int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int ENOENT ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  memfd_content ; 
 char* memfd_path ; 
 int /*<<< orphan*/  FUNC0 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *path, struct stat *st)
{
	FUNC0(st, 0, sizeof(*st));

	if (!FUNC1(path, "/")) {
		st->st_mode = S_IFDIR | 0755;
		st->st_nlink = 2;
	} else if (!FUNC1(path, memfd_path)) {
		st->st_mode = S_IFREG | 0444;
		st->st_nlink = 1;
		st->st_size = FUNC2(memfd_content);
	} else {
		return -ENOENT;
	}

	return 0;
}