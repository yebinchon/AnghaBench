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
typedef  int u32 ;
struct madera_priv {struct madera* madera; } ;
struct madera_codec_pdata {int* out_mono; int* max_channels_clocked; int* pdm_fmt; int* pdm_mute; int* dmic_ref; } ;
struct TYPE_2__ {struct madera_codec_pdata codec; } ;
struct madera {int /*<<< orphan*/  dev; TYPE_1__ pdata; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct madera_priv*) ; 

__attribute__((used)) static void FUNC3(struct madera_priv *priv)
{
	struct madera *madera = priv->madera;
	struct madera_codec_pdata *pdata = &madera->pdata.codec;
	u32 out_mono[FUNC0(pdata->out_mono)];
	int i, n;

	FUNC2(priv);

	n = FUNC1(madera->dev, "cirrus,out-mono",
					  out_mono, FUNC0(out_mono), 1);
	if (n > 0)
		for (i = 0; i < n; ++i)
			pdata->out_mono[i] = !!out_mono[i];

	FUNC1(madera->dev,
				      "cirrus,max-channels-clocked",
				      pdata->max_channels_clocked,
				      FUNC0(pdata->max_channels_clocked),
				      1);

	FUNC1(madera->dev, "cirrus,pdm-fmt",
				      pdata->pdm_fmt,
				      FUNC0(pdata->pdm_fmt), 1);

	FUNC1(madera->dev, "cirrus,pdm-mute",
				      pdata->pdm_mute,
				      FUNC0(pdata->pdm_mute), 1);

	FUNC1(madera->dev, "cirrus,dmic-ref",
				      pdata->dmic_ref,
				      FUNC0(pdata->dmic_ref), 1);
}