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
struct tree {scalar_t__ maxage; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ DECOMPOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int UTF8HANGULLEAF ; 
 scalar_t__* ages ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (struct tree*,unsigned char*,char const*) ; 

ssize_t FUNC6(struct tree *tree, const char *s)
{
	utf8leaf_t	*leaf;
	size_t		ret = 0;
	unsigned char	hangul[UTF8HANGULLEAF];

	if (!tree)
		return -1;
	while (*s) {
		leaf = FUNC5(tree, hangul, s);
		if (!leaf)
			return -1;
		if (ages[FUNC1(leaf)] > tree->maxage)
			ret += FUNC4(s);
		else if (FUNC0(leaf) == DECOMPOSE)
			ret += FUNC3(FUNC2(leaf));
		else
			ret += FUNC4(s);
		s += FUNC4(s);
	}
	return ret;
}