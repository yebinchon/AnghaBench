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
struct snd_sof_dev {scalar_t__ private; } ;
struct imx8_priv {int num_domains; int /*<<< orphan*/ * pd_dev; int /*<<< orphan*/ * link; int /*<<< orphan*/  ipc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_sof_dev *sdev)
{
	struct imx8_priv *priv = (struct imx8_priv *)sdev->private;
	int i;

	FUNC2(priv->ipc_dev);

	for (i = 0; i < priv->num_domains; i++) {
		FUNC1(priv->link[i]);
		FUNC0(priv->pd_dev[i], false);
	}

	return 0;
}