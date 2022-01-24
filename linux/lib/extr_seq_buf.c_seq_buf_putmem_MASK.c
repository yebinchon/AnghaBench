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
struct seq_buf {scalar_t__ size; scalar_t__ len; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,unsigned int) ; 
 scalar_t__ FUNC2 (struct seq_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_buf*) ; 

int FUNC4(struct seq_buf *s, const void *mem, unsigned int len)
{
	FUNC0(s->size == 0);

	if (FUNC2(s, len)) {
		FUNC1(s->buffer + s->len, mem, len);
		s->len += len;
		return 0;
	}
	FUNC3(s);
	return -1;
}