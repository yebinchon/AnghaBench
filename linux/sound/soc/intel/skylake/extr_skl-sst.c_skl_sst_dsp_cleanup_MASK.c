#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct skl_dev {TYPE_4__* dsp; scalar_t__ boot_complete; int /*<<< orphan*/  ipc; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* cl_cleanup_controller ) (TYPE_4__*) ;} ;
struct TYPE_10__ {TYPE_2__ ops; } ;
struct TYPE_11__ {TYPE_3__ cl_dev; TYPE_1__* ops; scalar_t__ fw; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* free ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

void FUNC7(struct device *dev, struct skl_dev *skl)
{

	if (skl->dsp->fw)
		FUNC0(skl->dsp->fw);
	FUNC2(skl->dsp);
	FUNC3(skl);
	FUNC4(&skl->ipc);
	skl->dsp->ops->free(skl->dsp);
	if (skl->boot_complete) {
		skl->dsp->cl_dev.ops.cl_cleanup_controller(skl->dsp);
		FUNC1(skl->dsp);
	}
}