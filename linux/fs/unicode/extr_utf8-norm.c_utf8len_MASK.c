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
typedef  int /*<<< orphan*/  utf8leaf_t ;
struct utf8data {scalar_t__ maxage; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ DECOMPOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int UTF8HANGULLEAF ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* utf8agetab ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (struct utf8data const*,unsigned char*,char const*) ; 

ssize_t FUNC6(const struct utf8data *data, const char *s)
{
	utf8leaf_t	*leaf;
	size_t		ret = 0;
	unsigned char	hangul[UTF8HANGULLEAF];

	if (!data)
		return -1;
	while (*s) {
		leaf = FUNC5(data, hangul, s);
		if (!leaf)
			return -1;
		if (utf8agetab[FUNC1(leaf)] > data->maxage)
			ret += FUNC4(s);
		else if (FUNC0(leaf) == DECOMPOSE)
			ret += FUNC3(FUNC2(leaf));
		else
			ret += FUNC4(s);
		s += FUNC4(s);
	}
	return ret;
}