#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_riptide {int /*<<< orphan*/  lock; struct cmdif* cif; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int channels; unsigned int format; unsigned int rate; int /*<<< orphan*/  period_size; int /*<<< orphan*/  buffer_size; } ;
struct sgd {void* dwSegLen; void* dwStat_Ctl; void* dwSegPtrPhys; void* dwNextLink; } ;
struct TYPE_4__ {unsigned int addr; scalar_t__ area; } ;
struct TYPE_3__ {unsigned char* noconv; unsigned char* mono; unsigned char* stereo; } ;
struct pcmhw {unsigned int id; unsigned int size; unsigned int pages; unsigned char* lbuspath; unsigned int rate; scalar_t__ format; unsigned int channels; int /*<<< orphan*/  intdec; int /*<<< orphan*/  mixer; int /*<<< orphan*/  source; struct sgd* sgdbuf; TYPE_2__ sgdlist; TYPE_1__ paths; } ;
struct cmdif {int dummy; } ;
typedef  scalar_t__ snd_pcm_format_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int EINVAL ; 
 int EIO ; 
 unsigned int IEOB_ENABLE ; 
 unsigned int IEOC_ENABLE ; 
 unsigned int IEOS_ENABLE ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int /*<<< orphan*/  FUNC1 (struct cmdif*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdif*,int /*<<< orphan*/ ,unsigned char*) ; 
 struct pcmhw* FUNC5 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC6 (struct cmdif*,int /*<<< orphan*/ ,unsigned int,unsigned int,scalar_t__) ; 
 scalar_t__ FUNC7 (struct cmdif*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 unsigned int FUNC9 (struct snd_pcm_substream*,unsigned int) ; 
 struct snd_riptide* FUNC10 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream)
{
	struct snd_riptide *chip = FUNC10(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct pcmhw *data = FUNC5(substream);
	struct cmdif *cif = chip->cif;
	unsigned char *lbuspath = NULL;
	unsigned int rate, channels;
	int err = 0;
	snd_pcm_format_t format;

	if (FUNC8(!cif || !data))
		return -EINVAL;

	FUNC11("prepare id %d ch: %d f:0x%x r:%d\n", data->id,
		    runtime->channels, runtime->format, runtime->rate);

	FUNC12(&chip->lock);
	channels = runtime->channels;
	format = runtime->format;
	rate = runtime->rate;
	switch (channels) {
	case 1:
		if (rate == 48000 && format == SNDRV_PCM_FORMAT_S16_LE)
			lbuspath = data->paths.noconv;
		else
			lbuspath = data->paths.mono;
		break;
	case 2:
		if (rate == 48000 && format == SNDRV_PCM_FORMAT_S16_LE)
			lbuspath = data->paths.noconv;
		else
			lbuspath = data->paths.stereo;
		break;
	}
	FUNC11("use sgdlist at 0x%p\n",
		    data->sgdlist.area);
	if (data->sgdlist.area) {
		unsigned int i, j, size, pages, f, pt, period;
		struct sgd *c, *p = NULL;

		size = FUNC3(runtime, runtime->buffer_size);
		period = FUNC3(runtime, runtime->period_size);
		f = PAGE_SIZE;
		while ((size + (f >> 1) - 1) <= (f << 7) && (f << 1) > period)
			f = f >> 1;
		pages = FUNC0(size, f);
		data->size = size;
		data->pages = pages;
		FUNC11
		    ("create sgd size: 0x%x pages %d of size 0x%x for period 0x%x\n",
		     size, pages, f, period);
		pt = 0;
		j = 0;
		for (i = 0; i < pages; i++) {
			unsigned int ofs, addr;
			c = &data->sgdbuf[i];
			if (p)
				p->dwNextLink = FUNC2(data->sgdlist.addr +
							    (i *
							     sizeof(struct
								    sgd)));
			c->dwNextLink = FUNC2(data->sgdlist.addr);
			ofs = j << PAGE_SHIFT;
			addr = FUNC9(substream, ofs) + pt;
			c->dwSegPtrPhys = FUNC2(addr);
			pt = (pt + f) % PAGE_SIZE;
			if (pt == 0)
				j++;
			c->dwSegLen = FUNC2(f);
			c->dwStat_Ctl =
			    FUNC2(IEOB_ENABLE | IEOS_ENABLE |
					IEOC_ENABLE);
			p = c;
			size -= f;
		}
		data->sgdbuf[i].dwSegLen = FUNC2(size);
	}
	if (lbuspath && lbuspath != data->lbuspath) {
		if (data->lbuspath)
			FUNC4(cif, data->source, data->lbuspath);
		FUNC1(cif, data->source, lbuspath,
			      &data->mixer, data->intdec);
		data->lbuspath = lbuspath;
		data->rate = 0;
	}
	if (data->rate != rate || data->format != format ||
	    data->channels != channels) {
		data->rate = rate;
		data->format = format;
		data->channels = channels;
		if (FUNC6
		    (cif, data->mixer, data->id, channels, format)
		    || FUNC7(cif, data->intdec, rate))
			err = -EIO;
	}
	FUNC13(&chip->lock);
	return err;
}