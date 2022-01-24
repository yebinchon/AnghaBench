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
struct fs {int found; int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC6(struct fs *fs)
{
	char *override_path;
	size_t name_len = FUNC4(fs->name);
	/* name + "_PATH" + '\0' */
	char upper_name[name_len + 5 + 1];
	FUNC2(upper_name, fs->name, name_len);
	FUNC1(upper_name, name_len);
	FUNC3(&upper_name[name_len], "_PATH");

	override_path = FUNC0(upper_name);
	if (!override_path)
		return false;

	fs->found = true;
	FUNC5(fs->path, override_path, sizeof(fs->path));
	return true;
}