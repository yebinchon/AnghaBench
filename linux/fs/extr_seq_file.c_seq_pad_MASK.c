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
struct seq_file {int pad_until; int count; scalar_t__ size; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 

void FUNC3(struct seq_file *m, char c)
{
	int size = m->pad_until - m->count;
	if (size > 0) {
		if (size + m->count > m->size) {
			FUNC2(m);
			return;
		}
		FUNC0(m->buf + m->count, ' ', size);
		m->count += size;
	}
	if (c)
		FUNC1(m, c);
}