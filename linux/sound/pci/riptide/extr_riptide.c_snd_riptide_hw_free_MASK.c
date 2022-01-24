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
struct snd_riptide {struct cmdif* cif; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * area; } ;
struct pcmhw {int source; int* intdec; TYPE_1__ sgdlist; int /*<<< orphan*/ * lbuspath; } ;
struct cmdif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdif*,int,int /*<<< orphan*/ *) ; 
 struct pcmhw* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_riptide* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_riptide *chip = FUNC4(substream);
	struct pcmhw *data = FUNC1(substream);
	struct cmdif *cif = chip->cif;

	if (cif && data) {
		if (data->lbuspath)
			FUNC0(cif, data->source, data->lbuspath);
		data->lbuspath = NULL;
		data->source = 0xff;
		data->intdec[0] = 0xff;
		data->intdec[1] = 0xff;

		if (data->sgdlist.area) {
			FUNC2(&data->sgdlist);
			data->sgdlist.area = NULL;
		}
	}
	return FUNC3(substream);
}