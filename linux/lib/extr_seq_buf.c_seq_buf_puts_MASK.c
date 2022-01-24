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
struct seq_buf {scalar_t__ size; size_t buffer; size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,char const*,size_t) ; 
 scalar_t__ FUNC2 (struct seq_buf*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_buf*) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5(struct seq_buf *s, const char *str)
{
	size_t len = FUNC4(str);

	FUNC0(s->size == 0);

	/* Add 1 to len for the trailing null byte which must be there */
	len += 1;

	if (FUNC2(s, len)) {
		FUNC1(s->buffer + s->len, str, len);
		/* Don't count the trailing null byte against the capacity */
		s->len += len - 1;
		return 0;
	}
	FUNC3(s);
	return -1;
}