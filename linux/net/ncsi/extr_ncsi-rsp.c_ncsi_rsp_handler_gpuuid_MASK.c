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
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_gpuuid_pkt {int /*<<< orphan*/  uuid; TYPE_2__ rsp; } ;
struct ncsi_request {int /*<<< orphan*/  rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_package {int /*<<< orphan*/  uuid; } ;
struct ncsi_dev_priv {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncsi_dev_priv*,int /*<<< orphan*/ ,struct ncsi_package**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ncsi_request *nr)
{
	struct ncsi_rsp_gpuuid_pkt *rsp;
	struct ncsi_dev_priv *ndp = nr->ndp;
	struct ncsi_package *np;

	/* Find the package */
	rsp = (struct ncsi_rsp_gpuuid_pkt *)FUNC2(nr->rsp);
	FUNC1(ndp, rsp->rsp.common.channel,
				      &np, NULL);
	if (!np)
		return -ENODEV;

	FUNC0(np->uuid, rsp->uuid, sizeof(rsp->uuid));

	return 0;
}