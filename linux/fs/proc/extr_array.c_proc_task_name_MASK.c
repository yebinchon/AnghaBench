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
typedef  int /*<<< orphan*/  tcomm ;
struct task_struct {int flags; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int ESCAPE_SPACE ; 
 int ESCAPE_SPECIAL ; 
 int PF_WQ_WORKER ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int) ; 
 size_t FUNC2 (struct seq_file*,char**) ; 
 int FUNC3 (char*,char*,size_t,int,char*) ; 
 int FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct task_struct*) ; 

void FUNC6(struct seq_file *m, struct task_struct *p, bool escape)
{
	char *buf;
	size_t size;
	char tcomm[64];
	int ret;

	if (p->flags & PF_WQ_WORKER)
		FUNC5(tcomm, sizeof(tcomm), p);
	else
		FUNC0(tcomm, sizeof(tcomm), p);

	size = FUNC2(m, &buf);
	if (escape) {
		ret = FUNC3(tcomm, buf, size,
					ESCAPE_SPACE | ESCAPE_SPECIAL, "\n\\");
		if (ret >= size)
			ret = -1;
	} else {
		ret = FUNC4(buf, tcomm, size);
	}

	FUNC1(m, ret);
}