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
struct skl_dev {TYPE_2__* dsp; int /*<<< orphan*/  ipc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; scalar_t__ fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(struct device *dev, struct skl_dev *skl)
{
	if (skl->dsp->fw)
		FUNC1(skl->dsp->fw);

	FUNC2(skl);
	FUNC0(&skl->ipc);

	skl->dsp->ops->free(skl->dsp);
}