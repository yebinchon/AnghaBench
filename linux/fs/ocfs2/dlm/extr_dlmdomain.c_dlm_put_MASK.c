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
struct dlm_ctxt {int /*<<< orphan*/  dlm_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  dlm_ctxt_release ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dlm_ctxt *dlm)
{
	FUNC1(&dlm_domain_lock);
	FUNC0(&dlm->dlm_refs, dlm_ctxt_release);
	FUNC2(&dlm_domain_lock);
}