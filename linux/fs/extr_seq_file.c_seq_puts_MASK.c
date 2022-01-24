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
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int FUNC2 (char const*) ; 

void FUNC3(struct seq_file *m, const char *s)
{
	int len = FUNC2(s);

	if (m->count + len >= m->size) {
		FUNC1(m);
		return;
	}
	FUNC0(m->buf + m->count, s, len);
	m->count += len;
}