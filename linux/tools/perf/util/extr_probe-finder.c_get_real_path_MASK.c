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
struct TYPE_2__ {char* source_prefix; } ;

/* Variables and functions */
#define  EFAULT 131 
#define  ENAMETOOLONG 130 
#define  ENOENT 129 
 int ENOMEM ; 
#define  EROFS 128 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,char const*) ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 

int FUNC7(const char *raw_path, const char *comp_dir,
			 char **new_path)
{
	const char *prefix = symbol_conf.source_prefix;

	if (!prefix) {
		if (raw_path[0] != '/' && comp_dir)
			/* If not an absolute path, try to use comp_dir */
			prefix = comp_dir;
		else {
			if (FUNC0(raw_path, R_OK) == 0) {
				*new_path = FUNC4(raw_path);
				return *new_path ? 0 : -ENOMEM;
			} else
				return -errno;
		}
	}

	*new_path = FUNC1((FUNC5(prefix) + FUNC5(raw_path) + 2));
	if (!*new_path)
		return -ENOMEM;

	for (;;) {
		FUNC2(*new_path, "%s/%s", prefix, raw_path);

		if (FUNC0(*new_path, R_OK) == 0)
			return 0;

		if (!symbol_conf.source_prefix) {
			/* In case of searching comp_dir, don't retry */
			FUNC6(new_path);
			return -errno;
		}

		switch (errno) {
		case ENAMETOOLONG:
		case ENOENT:
		case EROFS:
		case EFAULT:
			raw_path = FUNC3(++raw_path, '/');
			if (!raw_path) {
				FUNC6(new_path);
				return -ENOENT;
			}
			continue;

		default:
			FUNC6(new_path);
			return -errno;
		}
	}
}