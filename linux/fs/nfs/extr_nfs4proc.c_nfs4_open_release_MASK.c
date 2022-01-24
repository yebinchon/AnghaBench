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
struct nfs4_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fmode; } ;
struct TYPE_3__ {int rflags; } ;
struct nfs4_opendata {scalar_t__ rpc_status; TYPE_2__ o_arg; TYPE_1__ o_res; int /*<<< orphan*/  rpc_done; int /*<<< orphan*/  cancelled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_state*) ; 
 int NFS4_OPEN_RESULT_CONFIRM ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_opendata*) ; 
 struct nfs4_state* FUNC3 (struct nfs4_opendata*) ; 

__attribute__((used)) static void FUNC4(void *calldata)
{
	struct nfs4_opendata *data = calldata;
	struct nfs4_state *state = NULL;

	/* If this request hasn't been cancelled, do nothing */
	if (!data->cancelled)
		goto out_free;
	/* In case of error, no cleanup! */
	if (data->rpc_status != 0 || !data->rpc_done)
		goto out_free;
	/* In case we need an open_confirm, no cleanup! */
	if (data->o_res.rflags & NFS4_OPEN_RESULT_CONFIRM)
		goto out_free;
	state = FUNC3(data);
	if (!FUNC0(state))
		FUNC1(state, data->o_arg.fmode);
out_free:
	FUNC2(data);
}