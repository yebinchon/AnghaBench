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
struct dlm_ctxt {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  dlm_domain_events ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dlm_ctxt *dlm)
{
	FUNC3(dlm);
	FUNC1(dlm);
	FUNC0(dlm);
	FUNC2(dlm);

	/* We've left the domain. Now we can take ourselves out of the
	 * list and allow the kref stuff to help us free the
	 * memory. */
	FUNC5(&dlm_domain_lock);
	FUNC4(&dlm->list);
	FUNC6(&dlm_domain_lock);

	/* Wake up anyone waiting for us to remove this domain */
	FUNC7(&dlm_domain_events);
}