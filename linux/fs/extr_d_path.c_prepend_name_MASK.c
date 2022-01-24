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
typedef  scalar_t__ u32 ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(char **buffer, int *buflen, const struct qstr *name)
{
	const char *dname = FUNC1(&name->name); /* ^^^ */
	u32 dlen = FUNC0(name->len);
	char *p;

	*buflen -= dlen + 1;
	if (*buflen < 0)
		return -ENAMETOOLONG;
	p = *buffer -= dlen + 1;
	*p++ = '/';
	while (dlen--) {
		char c = *dname++;
		if (!c)
			break;
		*p++ = c;
	}
	return 0;
}