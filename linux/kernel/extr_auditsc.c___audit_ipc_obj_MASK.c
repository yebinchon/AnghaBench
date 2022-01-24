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
struct kern_ipc_perm {int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  osid; scalar_t__ has_perm; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct audit_context {int /*<<< orphan*/  type; TYPE_1__ ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_IPC ; 
 struct audit_context* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kern_ipc_perm*,int /*<<< orphan*/ *) ; 

void FUNC2(struct kern_ipc_perm *ipcp)
{
	struct audit_context *context = FUNC0();
	context->ipc.uid = ipcp->uid;
	context->ipc.gid = ipcp->gid;
	context->ipc.mode = ipcp->mode;
	context->ipc.has_perm = 0;
	FUNC1(ipcp, &context->ipc.osid);
	context->type = AUDIT_IPC;
}