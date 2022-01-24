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
struct pid_namespace {struct pid_namespace* parent; } ;
struct bsd_acct_struct {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct bsd_acct_struct* FUNC0 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC1 (struct bsd_acct_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct bsd_acct_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pid_namespace *ns)
{
	for ( ; ns; ns = ns->parent) {
		struct bsd_acct_struct *acct = FUNC0(ns);
		if (acct) {
			FUNC2(acct);
			FUNC3(&acct->lock);
			FUNC1(acct);
		}
	}
}