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
struct data {char* val; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_STRING ; 
 struct data FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct data FUNC1 (struct data,int) ; 
 int /*<<< orphan*/  empty_data ; 
 char FUNC2 (char const*,int*) ; 

struct data FUNC3(const char *s, int len)
{
	int i = 0;
	struct data d;
	char *q;

	d = FUNC0(empty_data, TYPE_STRING, NULL);
	d = FUNC1(d, len + 1);

	q = d.val;
	while (i < len) {
		char c = s[i++];

		if (c == '\\')
			c = FUNC2(s, &i);

		q[d.len++] = c;
	}

	q[d.len++] = '\0';
	return d;
}