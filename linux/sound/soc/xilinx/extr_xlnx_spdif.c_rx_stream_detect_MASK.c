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
struct spdif_dev_data {int rx_chsts_updated; int /*<<< orphan*/  chsts_q; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_STATUS_UPDATE_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct spdif_dev_data* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai)
{
	int err;
	struct spdif_dev_data *ctx = FUNC1(dai->dev);
	unsigned long jiffies = FUNC2(CH_STATUS_UPDATE_TIMEOUT);

	/* start capture only if stream is detected within 40ms timeout */
	err = FUNC3(ctx->chsts_q,
					       ctx->rx_chsts_updated,
					       jiffies);
	if (!err) {
		FUNC0(dai->dev, "No streaming audio detected!\n");
		return -EINVAL;
	}
	ctx->rx_chsts_updated = false;

	return 0;
}