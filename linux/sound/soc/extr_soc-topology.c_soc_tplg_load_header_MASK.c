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
struct soc_tplg {int req_index; int index; scalar_t__ hdr_pos; scalar_t__ pos; } ;
struct snd_soc_tplg_hdr {int /*<<< orphan*/  type; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ SND_SOC_TPLG_INDEX_ALL ; 
#define  SND_SOC_TPLG_TYPE_BACKEND_LINK 137 
#define  SND_SOC_TPLG_TYPE_BYTES 136 
#define  SND_SOC_TPLG_TYPE_DAI 135 
#define  SND_SOC_TPLG_TYPE_DAI_LINK 134 
#define  SND_SOC_TPLG_TYPE_DAPM_GRAPH 133 
#define  SND_SOC_TPLG_TYPE_DAPM_WIDGET 132 
#define  SND_SOC_TPLG_TYPE_ENUM 131 
#define  SND_SOC_TPLG_TYPE_MANIFEST 130 
#define  SND_SOC_TPLG_TYPE_MIXER 129 
#define  SND_SOC_TPLG_TYPE_PCM 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC2 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC3 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC4 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC5 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC6 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC7 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 
 int FUNC8 (struct soc_tplg*,struct snd_soc_tplg_hdr*) ; 

__attribute__((used)) static int FUNC9(struct soc_tplg *tplg,
	struct snd_soc_tplg_hdr *hdr)
{
	tplg->pos = tplg->hdr_pos + sizeof(struct snd_soc_tplg_hdr);

	/* check for matching ID */
	if (FUNC0(hdr->index) != tplg->req_index &&
		tplg->req_index != SND_SOC_TPLG_INDEX_ALL)
		return 0;

	tplg->index = FUNC0(hdr->index);

	switch (FUNC0(hdr->type)) {
	case SND_SOC_TPLG_TYPE_MIXER:
	case SND_SOC_TPLG_TYPE_ENUM:
	case SND_SOC_TPLG_TYPE_BYTES:
		return FUNC4(tplg, hdr);
	case SND_SOC_TPLG_TYPE_DAPM_GRAPH:
		return FUNC2(tplg, hdr);
	case SND_SOC_TPLG_TYPE_DAPM_WIDGET:
		return FUNC3(tplg, hdr);
	case SND_SOC_TPLG_TYPE_PCM:
		return FUNC7(tplg, hdr);
	case SND_SOC_TPLG_TYPE_DAI:
		return FUNC1(tplg, hdr);
	case SND_SOC_TPLG_TYPE_DAI_LINK:
	case SND_SOC_TPLG_TYPE_BACKEND_LINK:
		/* physical link configurations */
		return FUNC5(tplg, hdr);
	case SND_SOC_TPLG_TYPE_MANIFEST:
		return FUNC6(tplg, hdr);
	default:
		/* bespoke vendor data object */
		return FUNC8(tplg, hdr);
	}

	return 0;
}