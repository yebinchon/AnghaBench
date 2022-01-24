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
typedef  int /*<<< orphan*/  va_list ;
struct seq_buf {scalar_t__ size; scalar_t__ len; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_buf*) ; 
 int FUNC2 (scalar_t__,scalar_t__,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct seq_buf *s, const char *fmt, va_list args)
{
	int len;

	FUNC0(s->size == 0);

	if (s->len < s->size) {
		len = FUNC2(s->buffer + s->len, s->size - s->len, fmt, args);
		if (s->len + len < s->size) {
			s->len += len;
			return 0;
		}
	}
	FUNC1(s);
	return -1;
}