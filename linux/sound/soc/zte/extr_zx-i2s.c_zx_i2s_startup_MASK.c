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
struct zx_i2s_info {int /*<<< orphan*/  dai_wclk; int /*<<< orphan*/  dai_pclk; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct zx_i2s_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			  struct snd_soc_dai *dai)
{
	struct zx_i2s_info *zx_i2s = FUNC2(dai->dev);
	int ret;

	ret = FUNC1(zx_i2s->dai_wclk);
	if (ret)
		return ret;

	ret = FUNC1(zx_i2s->dai_pclk);
	if (ret) {
		FUNC0(zx_i2s->dai_wclk);
		return ret;
	}

	return ret;
}