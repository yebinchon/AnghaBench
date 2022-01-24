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
struct snd_pcm_substream {scalar_t__ stream; } ;
struct mchp_i2s_mcc_dev {int tx_rdy; int rx_rdy; scalar_t__ gclk_use; int /*<<< orphan*/  gclk; scalar_t__ gclk_running; int /*<<< orphan*/  regmap; int /*<<< orphan*/  channels; int /*<<< orphan*/  dev; int /*<<< orphan*/  wq_rxrdy; int /*<<< orphan*/  wq_txrdy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCHP_I2SMCC_CR ; 
 int /*<<< orphan*/  MCHP_I2SMCC_CR_CKDIS ; 
 int /*<<< orphan*/  MCHP_I2SMCC_IDRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mchp_i2s_mcc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mchp_i2s_mcc_dev* FUNC8 (struct snd_soc_dai*) ; 
 long FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct mchp_i2s_mcc_dev *dev = FUNC8(dai);
	bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	long err;

	if (is_playback) {
		err = FUNC9(dev->wq_txrdy,
						       dev->tx_rdy,
						       FUNC6(500));
		if (err == 0) {
			FUNC4(dev->dev,
				      "Timeout waiting for Tx ready\n");
			FUNC7(dev->regmap, MCHP_I2SMCC_IDRA,
				     FUNC1(dev->channels));
			dev->tx_rdy = 1;
		}
	} else {
		err = FUNC9(dev->wq_rxrdy,
						       dev->rx_rdy,
						       FUNC6(500));
		if (err == 0) {
			FUNC4(dev->dev,
				      "Timeout waiting for Rx ready\n");
			FUNC7(dev->regmap, MCHP_I2SMCC_IDRA,
				     FUNC0(dev->channels));
			dev->rx_rdy = 1;
		}
	}

	if (!FUNC5(dev)) {
		FUNC7(dev->regmap, MCHP_I2SMCC_CR, MCHP_I2SMCC_CR_CKDIS);

		if (dev->gclk_running) {
			FUNC2(dev->gclk);
			dev->gclk_running = 0;
		}
		if (dev->gclk_use) {
			FUNC3(dev->gclk);
			dev->gclk_use = 0;
		}
	}

	return 0;
}