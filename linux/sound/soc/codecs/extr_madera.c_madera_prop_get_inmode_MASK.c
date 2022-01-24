#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct madera_priv {struct madera* madera; } ;
struct madera_codec_pdata {int /*<<< orphan*/ ** inmode; } ;
struct TYPE_2__ {struct madera_codec_pdata codec; } ;
struct madera {int /*<<< orphan*/  dev; TYPE_1__ pdata; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MADERA_MAX_INPUT ; 
 int MADERA_MAX_MUXED_CHANNELS ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(struct madera_priv *priv)
{
	struct madera *madera = priv->madera;
	struct madera_codec_pdata *pdata = &madera->pdata.codec;
	u32 tmp[MADERA_MAX_INPUT * MADERA_MAX_MUXED_CHANNELS];
	int n, i, in_idx, ch_idx;

	FUNC1(FUNC0(*pdata->inmode) != MADERA_MAX_INPUT);
	FUNC1(FUNC0(pdata->inmode[0]) != MADERA_MAX_MUXED_CHANNELS);

	n = FUNC2(madera->dev, "cirrus,inmode",
					  tmp, FUNC0(tmp),
					  MADERA_MAX_MUXED_CHANNELS);
	if (n < 0)
		return;

	in_idx = 0;
	ch_idx = 0;
	for (i = 0; i < n; ++i) {
		pdata->inmode[in_idx][ch_idx] = tmp[i];

		if (++ch_idx == MADERA_MAX_MUXED_CHANNELS) {
			ch_idx = 0;
			++in_idx;
		}
	}
}