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
struct fs {char** mounts; int found; int /*<<< orphan*/  path; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const* const) ; 

__attribute__((used)) static bool FUNC2(struct fs *fs)
{
	const char * const *ptr;

	ptr = fs->mounts;
	while (*ptr) {
		if (FUNC0(*ptr, fs->magic) == 0) {
			fs->found = true;
			FUNC1(fs->path, *ptr);
			return true;
		}
		ptr++;
	}

	return false;
}