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
struct utf8data {int dummy; } ;
struct utf8cursor {int dummy; } ;
struct unicode_map {int /*<<< orphan*/  version; } ;
struct qstr {int* name; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct utf8cursor*) ; 
 scalar_t__ FUNC1 (struct utf8cursor*,struct utf8data const*,int*,int /*<<< orphan*/ ) ; 
 struct utf8data* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const struct unicode_map *um,
			    const struct qstr *cf,
			    const struct qstr *s1)
{
	const struct utf8data *data = FUNC2(um->version);
	struct utf8cursor cur1;
	int c1, c2;
	int i = 0;

	if (FUNC1(&cur1, data, s1->name, s1->len) < 0)
		return -EINVAL;

	do {
		c1 = FUNC0(&cur1);
		c2 = cf->name[i++];
		if (c1 < 0)
			return -EINVAL;
		if (c1 != c2)
			return 1;
	} while (c1);

	return 0;
}