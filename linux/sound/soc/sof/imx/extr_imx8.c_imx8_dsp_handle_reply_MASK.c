#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imx_dsp_ipc {int dummy; } ;
struct imx8_priv {TYPE_1__* sdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ipc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct imx8_priv* FUNC1 (struct imx_dsp_ipc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct imx_dsp_ipc *ipc)
{
	struct imx8_priv *priv = FUNC1(ipc);
	unsigned long flags;

	FUNC3(&priv->sdev->ipc_lock, flags);
	FUNC0(priv->sdev);
	FUNC2(priv->sdev, 0);
	FUNC4(&priv->sdev->ipc_lock, flags);
}