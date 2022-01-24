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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct utf8cursor*) ; 
 scalar_t__ FUNC1 (struct utf8cursor*,struct utf8data const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct utf8data* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const struct unicode_map *um, const struct qstr *str,
		  unsigned char *dest, size_t dlen)
{
	const struct utf8data *data = FUNC2(um->version);
	struct utf8cursor cur;
	size_t nlen = 0;

	if (FUNC1(&cur, data, str->name, str->len) < 0)
		return -EINVAL;

	for (nlen = 0; nlen < dlen; nlen++) {
		int c = FUNC0(&cur);

		dest[nlen] = c;
		if (!c)
			return nlen;
		if (c == -1)
			break;
	}
	return -EINVAL;
}