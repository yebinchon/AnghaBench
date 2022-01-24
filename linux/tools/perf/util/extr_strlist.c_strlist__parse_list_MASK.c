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
struct strlist {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (struct strlist*,char const*,char const*) ; 

__attribute__((used)) static int FUNC2(struct strlist *slist, const char *s, const char *subst_dir)
{
	char *sep;
	int err;

	while ((sep = FUNC0(s, ',')) != NULL) {
		*sep = '\0';
		err = FUNC1(slist, s, subst_dir);
		*sep = ',';
		if (err != 0)
			return err;
		s = sep + 1;
	}

	return *s ? FUNC1(slist, s, subst_dir) : 0;
}