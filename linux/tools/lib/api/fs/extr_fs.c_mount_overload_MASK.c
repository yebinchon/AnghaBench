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
struct fs {char* name; char const** mounts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static const char *FUNC4(struct fs *fs)
{
	size_t name_len = FUNC3(fs->name);
	/* "PERF_" + name + "_ENVIRONMENT" + '\0' */
	char upper_name[5 + name_len + 12 + 1];

	FUNC2(upper_name, name_len, "PERF_%s_ENVIRONMENT", fs->name);
	FUNC1(upper_name, name_len);

	return FUNC0(upper_name) ?: *fs->mounts;
}