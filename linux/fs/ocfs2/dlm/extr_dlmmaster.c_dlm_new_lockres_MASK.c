#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* name; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,struct dlm_lock_resource*,char const*,unsigned int) ; 
 int /*<<< orphan*/  dlm_lockname_cache ; 
 int /*<<< orphan*/  dlm_lockres_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dlm_lock_resource*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dlm_lock_resource *FUNC3(struct dlm_ctxt *dlm,
				   const char *name,
				   unsigned int namelen)
{
	struct dlm_lock_resource *res = NULL;

	res = FUNC2(dlm_lockres_cache, GFP_NOFS);
	if (!res)
		goto error;

	res->lockname.name = FUNC2(dlm_lockname_cache, GFP_NOFS);
	if (!res->lockname.name)
		goto error;

	FUNC0(dlm, res, name, namelen);
	return res;

error:
	if (res)
		FUNC1(dlm_lockres_cache, res);
	return NULL;
}