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
struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nsproxy*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

void FUNC5(struct task_struct *p, struct nsproxy *new)
{
	struct nsproxy *ns;

	FUNC2();

	FUNC3(p);
	ns = p->nsproxy;
	p->nsproxy = new;
	FUNC4(p);

	if (ns && FUNC0(&ns->count))
		FUNC1(ns);
}