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
struct soc_tplg {int /*<<< orphan*/  dev; } ;
struct snd_soc_tplg_stream {int dummy; } ;
struct snd_soc_tplg_pcm_v4 {int /*<<< orphan*/ * caps; int /*<<< orphan*/ * stream; int /*<<< orphan*/  num_streams; int /*<<< orphan*/  compress; int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; int /*<<< orphan*/  dai_id; int /*<<< orphan*/  pcm_id; int /*<<< orphan*/ * dai_name; int /*<<< orphan*/ * pcm_name; } ;
struct snd_soc_tplg_pcm {int /*<<< orphan*/ * caps; int /*<<< orphan*/ * stream; int /*<<< orphan*/  num_streams; int /*<<< orphan*/  compress; int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; int /*<<< orphan*/  dai_id; int /*<<< orphan*/  pcm_id; int /*<<< orphan*/ * dai_name; int /*<<< orphan*/ * pcm_name; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_tplg_pcm* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct soc_tplg *tplg,
		       struct snd_soc_tplg_pcm *src,
		       struct snd_soc_tplg_pcm **pcm)
{
	struct snd_soc_tplg_pcm *dest;
	struct snd_soc_tplg_pcm_v4 *src_v4;
	int i;

	*pcm = NULL;

	if (FUNC4(src->size) != sizeof(*src_v4)) {
		FUNC1(tplg->dev, "ASoC: invalid PCM size\n");
		return -EINVAL;
	}

	FUNC2(tplg->dev, "ASoC: old version of PCM\n");
	src_v4 = (struct snd_soc_tplg_pcm_v4 *)src;
	dest = FUNC3(sizeof(*dest), GFP_KERNEL);
	if (!dest)
		return -ENOMEM;

	dest->size = FUNC0(sizeof(*dest)); /* size of latest abi version */
	FUNC5(dest->pcm_name, src_v4->pcm_name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
	FUNC5(dest->dai_name, src_v4->dai_name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
	dest->pcm_id = src_v4->pcm_id;
	dest->dai_id = src_v4->dai_id;
	dest->playback = src_v4->playback;
	dest->capture = src_v4->capture;
	dest->compress = src_v4->compress;
	dest->num_streams = src_v4->num_streams;
	for (i = 0; i < FUNC4(dest->num_streams); i++)
		FUNC5(&dest->stream[i], &src_v4->stream[i],
		       sizeof(struct snd_soc_tplg_stream));

	for (i = 0; i < 2; i++)
		FUNC6(&dest->caps[i], &src_v4->caps[i]);

	*pcm = dest;
	return 0;
}