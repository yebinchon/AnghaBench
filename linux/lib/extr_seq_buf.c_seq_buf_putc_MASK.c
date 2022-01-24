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
struct seq_buf {scalar_t__ size; unsigned char* buffer; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct seq_buf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_buf*) ; 

int FUNC3(struct seq_buf *s, unsigned char c)
{
	FUNC0(s->size == 0);

	if (FUNC1(s, 1)) {
		s->buffer[s->len++] = c;
		return 0;
	}
	FUNC2(s);
	return -1;
}