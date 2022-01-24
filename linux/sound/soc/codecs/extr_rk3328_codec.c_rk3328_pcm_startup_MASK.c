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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct snd_pcm_substream {int dummy; } ;
struct rk3328_codec_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rk3328_codec_priv*) ; 
 struct rk3328_codec_priv* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			      struct snd_soc_dai *dai)
{
	struct rk3328_codec_priv *rk3328 =
		FUNC1(dai->component);

	return FUNC0(rk3328);
}