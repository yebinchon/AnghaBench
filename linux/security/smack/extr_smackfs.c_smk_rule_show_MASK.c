#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smack_rule {int smk_access; TYPE_2__* smk_object; TYPE_1__* smk_subject; } ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  smk_known; } ;
struct TYPE_3__ {int /*<<< orphan*/  smk_known; } ;

/* Variables and functions */
 int MAY_APPEND ; 
 int MAY_BRINGUP ; 
 int MAY_EXEC ; 
 int MAY_LOCK ; 
 int MAY_READ ; 
 int MAY_TRANSMUTE ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, struct smack_rule *srp, int max)
{
	/*
	 * Don't show any rules with label names too long for
	 * interface file (/smack/load or /smack/load2)
	 * because you should expect to be able to write
	 * anything you read back.
	 */
	if (FUNC2(srp->smk_subject->smk_known) >= max ||
	    FUNC2(srp->smk_object->smk_known) >= max)
		return;

	if (srp->smk_access == 0)
		return;

	FUNC0(s, "%s %s",
		   srp->smk_subject->smk_known,
		   srp->smk_object->smk_known);

	FUNC1(s, ' ');

	if (srp->smk_access & MAY_READ)
		FUNC1(s, 'r');
	if (srp->smk_access & MAY_WRITE)
		FUNC1(s, 'w');
	if (srp->smk_access & MAY_EXEC)
		FUNC1(s, 'x');
	if (srp->smk_access & MAY_APPEND)
		FUNC1(s, 'a');
	if (srp->smk_access & MAY_TRANSMUTE)
		FUNC1(s, 't');
	if (srp->smk_access & MAY_LOCK)
		FUNC1(s, 'l');
	if (srp->smk_access & MAY_BRINGUP)
		FUNC1(s, 'b');

	FUNC1(s, '\n');
}