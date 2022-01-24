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
typedef  int u8 ;
typedef  int u32 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_spdifout {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 unsigned int SPDIFOUT_CHSTS0 ; 
 unsigned int SPDIFOUT_CHSTS1 ; 
 unsigned int SPDIFOUT_CHSTS5 ; 
 unsigned int SPDIFOUT_CHSTS6 ; 
 unsigned int SPDIFOUT_CHSTS7 ; 
 unsigned int SPDIFOUT_CHSTSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC3 (struct snd_pcm_hw_params*,int*,int) ; 
 struct axg_spdifout* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct axg_spdifout *priv = FUNC4(dai);
	unsigned int offset;
	int ret;
	u8 cs[4];
	u32 val;

	ret = FUNC3(params, cs, 4);
	if (ret < 0) {
		FUNC0(dai->dev, "Creating IEC958 channel status failed %d\n",
			ret);
		return ret;
	}
	val = cs[0] | cs[1] << 8 | cs[2] << 16 | cs[3] << 24;

	/* Setup channel status A bits [31 - 0]*/
	FUNC2(priv->map, SPDIFOUT_CHSTS0, val);

	/* Clear channel status A bits [191 - 32] */
	for (offset = SPDIFOUT_CHSTS1; offset <= SPDIFOUT_CHSTS5;
	     offset += FUNC1(priv->map))
		FUNC2(priv->map, offset, 0);

	/* Setup channel status B bits [31 - 0]*/
	FUNC2(priv->map, SPDIFOUT_CHSTS6, val);

	/* Clear channel status B bits [191 - 32] */
	for (offset = SPDIFOUT_CHSTS7; offset <= SPDIFOUT_CHSTSB;
	     offset += FUNC1(priv->map))
		FUNC2(priv->map, offset, 0);

	return 0;
}