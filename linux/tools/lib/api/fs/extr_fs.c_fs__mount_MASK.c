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
struct fs {char const* path; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fs*) ; 
 struct fs* fs__entries ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct fs*) ; 

__attribute__((used)) static const char *FUNC4(int idx)
{
	struct fs *fs = &fs__entries[idx];
	const char *mountpoint;

	if (FUNC1(idx))
		return (const char *)fs->path;

	mountpoint = FUNC3(fs);

	if (FUNC2(NULL, mountpoint, fs->name, 0, NULL) < 0)
		return NULL;

	return FUNC0(fs) ? fs->path : NULL;
}