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
typedef  int /*<<< orphan*/  u32 ;
struct gss_ctx {TYPE_2__* mech_type; scalar_t__ internal_ctx_id; } ;
struct TYPE_4__ {TYPE_1__* gm_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* gss_delete_sec_context ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct gss_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct gss_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

u32
FUNC4(struct gss_ctx	**context_handle)
{
	FUNC0("RPC:       gss_delete_sec_context deleting %p\n",
			*context_handle);

	if (!*context_handle)
		return GSS_S_NO_CONTEXT;
	if ((*context_handle)->internal_ctx_id)
		(*context_handle)->mech_type->gm_ops
			->gss_delete_sec_context((*context_handle)
							->internal_ctx_id);
	FUNC1((*context_handle)->mech_type);
	FUNC2(*context_handle);
	*context_handle=NULL;
	return GSS_S_COMPLETE;
}