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
struct trace_buffer {int dummy; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_buffer*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC4(struct trace_buffer *buf, struct seq_file *m)
{
	unsigned long total;
	unsigned long entries;

	FUNC0(buf, &total, &entries);
	FUNC2(m, "# entries-in-buffer/entries-written: %lu/%lu   #P:%d\n",
		   entries, total, FUNC1());
	FUNC3(m, "#\n");
}