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
struct utf8data {int maxage; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int UTF8HANGULLEAF ; 
 int* utf8agetab ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct utf8data const*,unsigned char*,char const*) ; 

int FUNC3(const struct utf8data *data, const char *s)
{
	utf8leaf_t	*leaf;
	int		age = 0;
	int		leaf_age;
	unsigned char	hangul[UTF8HANGULLEAF];

	if (!data)
		return -1;

	while (*s) {
		leaf = FUNC2(data, hangul, s);
		if (!leaf)
			return -1;

		leaf_age = utf8agetab[FUNC0(leaf)];
		if (leaf_age <= data->maxage && leaf_age > age)
			age = leaf_age;
		s += FUNC1(s);
	}
	return age;
}