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
struct TYPE_2__ {int /*<<< orphan*/  seqid; } ;
struct nfs4_unlockdata {int /*<<< orphan*/  ctx; int /*<<< orphan*/  l_ctx; int /*<<< orphan*/  lsp; TYPE_1__ arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_unlockdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct nfs4_unlockdata *calldata = data;
	FUNC2(calldata->arg.seqid);
	FUNC1(calldata->lsp);
	FUNC3(calldata->l_ctx);
	FUNC4(calldata->ctx);
	FUNC0(calldata);
}