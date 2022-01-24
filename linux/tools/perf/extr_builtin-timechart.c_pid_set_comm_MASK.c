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
struct timechart {int dummy; } ;
struct per_pidcomm {struct per_pidcomm* next; void* comm; } ;
struct per_pid {struct per_pidcomm* all; struct per_pidcomm* current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct per_pid* FUNC1 (struct timechart*,int) ; 
 scalar_t__ FUNC2 (void*,char*) ; 
 void* FUNC3 (char*) ; 
 struct per_pidcomm* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct timechart *tchart, int pid, char *comm)
{
	struct per_pid *p;
	struct per_pidcomm *c;
	p = FUNC1(tchart, pid);
	c = p->all;
	while (c) {
		if (c->comm && FUNC2(c->comm, comm) == 0) {
			p->current = c;
			return;
		}
		if (!c->comm) {
			c->comm = FUNC3(comm);
			p->current = c;
			return;
		}
		c = c->next;
	}
	c = FUNC4(sizeof(*c));
	FUNC0(c != NULL);
	c->comm = FUNC3(comm);
	p->current = c;
	c->next = p->all;
	p->all = c;
}