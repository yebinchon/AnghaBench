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
struct dlm_ctxt {scalar_t__ dlm_state; } ;

/* Variables and functions */
 scalar_t__ DLM_CTXT_IN_SHUTDOWN ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct dlm_ctxt *dlm)
{
	int ret = 0;

	FUNC0(&dlm_domain_lock);
	if (dlm->dlm_state == DLM_CTXT_IN_SHUTDOWN)
		ret = 1;
	FUNC1(&dlm_domain_lock);

	return ret;
}