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
struct strlist {scalar_t__ file_only; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct strlist*,char const*) ; 
 int FUNC4 (struct strlist*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct strlist *slist, const char *s,
				     const char *subst_dir)
{
	int err;
	char *subst = NULL;

	if (FUNC5(s, "file://", 7) == 0)
		return FUNC4(slist, s + 7);

	if (subst_dir) {
		err = -ENOMEM;
		if (FUNC1(&subst, "%s/%s", subst_dir, s) < 0)
			goto out;

		if (FUNC0(subst, F_OK) == 0) {
			err = FUNC4(slist, subst);
			goto out;
		}

		if (slist->file_only) {
			err = -ENOENT;
			goto out;
		}
	}

	err = FUNC3(slist, s);
out:
	FUNC2(subst);
	return err;
}