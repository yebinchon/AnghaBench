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
struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*) ; 

void FUNC4(struct seq_file *m, const char *delimiter,
			 unsigned long long num, unsigned int width)
{
	int len;

	if (m->count + 2 >= m->size) /* we'll write 2 bytes at least */
		goto overflow;

	if (delimiter && delimiter[0]) {
		if (delimiter[1] == 0)
			FUNC1(m, delimiter[0]);
		else
			FUNC2(m, delimiter);
	}

	if (!width)
		width = 1;

	if (m->count + width >= m->size)
		goto overflow;

	len = FUNC0(m->buf + m->count, m->size - m->count, num, width);
	if (!len)
		goto overflow;

	m->count += len;
	return;

overflow:
	FUNC3(m);
}