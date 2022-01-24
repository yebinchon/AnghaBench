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
struct audit_watch {int /*<<< orphan*/  rules; struct audit_parent* parent; } ;
struct audit_parent {int /*<<< orphan*/  mark; int /*<<< orphan*/  watches; } ;
struct audit_krule {int /*<<< orphan*/  rlist; struct audit_watch* watch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_parent*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_parent*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_watch*) ; 
 int /*<<< orphan*/  audit_watch_group ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct audit_krule *krule)
{
	struct audit_watch *watch = krule->watch;
	struct audit_parent *parent = watch->parent;

	FUNC4(&krule->rlist);

	if (FUNC5(&watch->rules)) {
		/*
		 * audit_remove_watch() drops our reference to 'parent' which
		 * can get freed. Grab our own reference to be safe.
		 */
		FUNC0(parent);
		FUNC2(watch);
		if (FUNC5(&parent->watches))
			FUNC3(&parent->mark, audit_watch_group);
		FUNC1(parent);
	}
}