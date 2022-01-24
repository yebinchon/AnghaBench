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
struct soc_tplg {scalar_t__ pass; int /*<<< orphan*/  dev; scalar_t__ hdr_pos; TYPE_1__* fw; } ;
struct snd_soc_tplg_hdr {int /*<<< orphan*/  payload_size; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ SOC_TPLG_PASS_END ; 
 scalar_t__ SOC_TPLG_PASS_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct soc_tplg*) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_tplg*) ; 
 int FUNC4 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC5 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 

__attribute__((used)) static int FUNC6(struct soc_tplg *tplg)
{
	struct snd_soc_tplg_hdr *hdr;
	int ret;

	tplg->pass = SOC_TPLG_PASS_START;

	/* process the header types from start to end */
	while (tplg->pass <= SOC_TPLG_PASS_END) {

		tplg->hdr_pos = tplg->fw->data;
		hdr = (struct snd_soc_tplg_hdr *)tplg->hdr_pos;

		while (!FUNC3(tplg)) {

			/* make sure header is valid before loading */
			ret = FUNC5(tplg, hdr);
			if (ret < 0)
				return ret;
			else if (ret == 0)
				break;

			/* load the header object */
			ret = FUNC4(tplg, hdr);
			if (ret < 0)
				return ret;

			/* goto next header */
			tplg->hdr_pos += FUNC1(hdr->payload_size) +
				sizeof(struct snd_soc_tplg_hdr);
			hdr = (struct snd_soc_tplg_hdr *)tplg->hdr_pos;
		}

		/* next data type pass */
		tplg->pass++;
	}

	/* signal DAPM we are complete */
	ret = FUNC2(tplg);
	if (ret < 0)
		FUNC0(tplg->dev,
			"ASoC: failed to initialise DAPM from Firmware\n");

	return ret;
}