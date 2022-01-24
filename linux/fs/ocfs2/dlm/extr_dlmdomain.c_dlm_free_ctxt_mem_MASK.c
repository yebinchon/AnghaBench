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
struct dlm_ctxt {struct dlm_ctxt* name; scalar_t__ master_hash; scalar_t__ lockres_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_HASH_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 

__attribute__((used)) static void FUNC3(struct dlm_ctxt *dlm)
{
	FUNC0(dlm);

	if (dlm->lockres_hash)
		FUNC1((void **)dlm->lockres_hash, DLM_HASH_PAGES);

	if (dlm->master_hash)
		FUNC1((void **)dlm->master_hash, DLM_HASH_PAGES);

	FUNC2(dlm->name);
	FUNC2(dlm);
}