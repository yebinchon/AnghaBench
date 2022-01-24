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
struct option {scalar_t__ long_name; int /*<<< orphan*/  short_name; } ;

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const void *va, const void *vb)
{
	const struct option *a = va, *b = vb;
	int sa = FUNC1(a->short_name), sb = FUNC1(b->short_name), ret;

	if (sa == 0)
		sa = 'z' + 1;
	if (sb == 0)
		sb = 'z' + 1;

	ret = sa - sb;

	if (ret == 0) {
		const char *la = a->long_name ?: "",
			   *lb = b->long_name ?: "";
		ret = FUNC0(la, lb);
	}

	return ret;
}