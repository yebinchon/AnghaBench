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
struct snd_soc_dai {int dummy; } ;
struct mchp_i2s_mcc_dev {int tx_rdy; int rx_rdy; int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; int /*<<< orphan*/  wq_rxrdy; int /*<<< orphan*/  wq_txrdy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mchp_i2s_mcc_dev* FUNC1 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct mchp_i2s_mcc_dev *dev = FUNC1(dai);

	FUNC0(&dev->wq_txrdy);
	FUNC0(&dev->wq_rxrdy);
	dev->tx_rdy = 1;
	dev->rx_rdy = 1;

	FUNC2(dai, &dev->playback, &dev->capture);

	return 0;
}