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
struct seq_file {int dummy; } ;
struct seq_buf {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct seq_buf*) ; 
 int FUNC1 (struct seq_file*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct seq_file *m, struct seq_buf *s)
{
	unsigned int len = FUNC0(s);

	return FUNC1(m, s->buffer, len);
}