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
struct terms_test {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct terms_test*) ; 

__attribute__((used)) static int FUNC2(struct terms_test *terms, unsigned cnt)
{
	int ret = 0;
	unsigned i;

	for (i = 0; i < cnt; i++) {
		struct terms_test *t = &terms[i];

		FUNC0("running test %d '%s'\n", i, t->str);
		ret = FUNC1(t);
		if (ret)
			break;
	}

	return ret;
}