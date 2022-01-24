#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  codec; TYPE_3__* dma_adb; int /*<<< orphan*/ * mixspdif; struct pcm_vol* pcm_vol; int /*<<< orphan*/ * a3d; TYPE_1__* card; } ;
typedef  TYPE_2__ vortex_t ;
typedef  int u32 ;
struct pcm_vol {int dma; int* mixin; scalar_t__* vol; } ;
struct TYPE_18__ {int dma; int dir; int type; int nr_ch; int /*<<< orphan*/ * resources; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_SIGMATEL_DAC2INVERT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  MIX_DEFIGAIN ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int VORTEX_PCM_A3D ; 
 int VORTEX_PCM_ADB ; 
 int VORTEX_PCM_SPDIF ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_A3D ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_DMA ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_MIXIN ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_MIXOUT ; 
 int /*<<< orphan*/  VORTEX_RESOURCE_SRC ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(vortex_t *vortex, int dma, int nr_ch, int dir,
			int type, int subdev)
{
	stream_t *stream;
	int i, en;
	struct pcm_vol *p;
	
	if (dma >= 0) {
		en = 0;
		FUNC14(vortex,
				      vortex->dma_adb[dma].resources, en,
				      VORTEX_RESOURCE_DMA);
	} else {
		en = 1;
		if ((dma =
		     FUNC14(vortex, NULL, en,
					   VORTEX_RESOURCE_DMA)) < 0)
			return -EBUSY;
	}

	stream = &vortex->dma_adb[dma];
	stream->dma = dma;
	stream->dir = dir;
	stream->type = type;

	/* PLAYBACK ROUTES. */
	if (dir == SNDRV_PCM_STREAM_PLAYBACK) {
		int src[4], mix[4], ch_top;
#ifndef CHIP_AU8820
		int a3d = 0;
#endif
		/* Get SRC and MIXER hardware resources. */
		if (stream->type != VORTEX_PCM_SPDIF) {
			for (i = 0; i < nr_ch; i++) {
				if ((src[i] = FUNC14(vortex,
							   stream->resources, en,
							   VORTEX_RESOURCE_SRC)) < 0) {
					FUNC10(stream->resources, 0,
					       sizeof(stream->resources));
					return -EBUSY;
				}
				if (stream->type != VORTEX_PCM_A3D) {
					if ((mix[i] = FUNC14(vortex,
								   stream->resources,
								   en,
								   VORTEX_RESOURCE_MIXIN)) < 0) {
						FUNC10(stream->resources,
						       0,
						       sizeof(stream->resources));
						return -EBUSY;
					}
				}
			}
		}
#ifndef CHIP_AU8820
		if (stream->type == VORTEX_PCM_A3D) {
			if ((a3d =
			     FUNC14(vortex,
						   stream->resources, en,
						   VORTEX_RESOURCE_A3D)) < 0) {
				FUNC10(stream->resources, 0,
				       sizeof(stream->resources));
				FUNC9(vortex->card->dev,
					"out of A3D sources. Sorry\n");
				return -EBUSY;
			}
			/* (De)Initialize A3D hardware source. */
			FUNC13(&vortex->a3d[a3d], en,
						       vortex);
		}
		/* Make SPDIF out exclusive to "spdif" device when in use. */
		if ((stream->type == VORTEX_PCM_SPDIF) && (en)) {
			FUNC22(vortex, 0, 0x14,
				     FUNC2(vortex->mixspdif[0]),
				     FUNC3(0));
			FUNC22(vortex, 0, 0x14,
				     FUNC2(vortex->mixspdif[1]),
				     FUNC3(1));
		}
#endif
		/* Make playback routes. */
		for (i = 0; i < nr_ch; i++) {
			if (stream->type == VORTEX_PCM_ADB) {
				FUNC15(vortex, en,
							     src[nr_ch - 1],
							     dma,
							     src[i]);
				FUNC19(vortex, en,
							    0x11, src[i],
							    mix[i]);
				FUNC17(vortex, en,
							    mix[i],
							    FUNC6(i), 0);
#ifndef CHIP_AU8820
				FUNC17(vortex, en,
							    mix[i],
							    FUNC7(i % 2), 0);
				FUNC21(vortex,
							      FUNC7(i % 2),
							      mix[i],
							      MIX_DEFIGAIN);
#endif
			}
#ifndef CHIP_AU8820
			if (stream->type == VORTEX_PCM_A3D) {
				FUNC15(vortex, en,
							     src[nr_ch - 1], 
								 dma,
							     src[i]);
				FUNC22(vortex, en, 0x11, FUNC4(src[i]), FUNC0(a3d));
				/* XTalk test. */
				//vortex_route(vortex, en, 0x11, dma, ADB_XTALKIN(i?9:4));
				//vortex_route(vortex, en, 0x11, ADB_SRCOUT(src[i]), ADB_XTALKIN(i?4:9));
			}
			if (stream->type == VORTEX_PCM_SPDIF)
				FUNC22(vortex, en, 0x14,
					     FUNC1(stream->dma),
					     FUNC3(i));
#endif
		}
		if (stream->type != VORTEX_PCM_SPDIF && stream->type != VORTEX_PCM_A3D) {
			ch_top = (FUNC8(vortex) ? 4 : 2);
			for (i = nr_ch; i < ch_top; i++) {
				FUNC17(vortex, en,
							    mix[i % nr_ch],
							    FUNC6(i), 0);
#ifndef CHIP_AU8820
				FUNC17(vortex, en,
							    mix[i % nr_ch],
							    FUNC7(i % 2),
								0);
				FUNC21(vortex,
							      FUNC7(i % 2),
							      mix[i % nr_ch],
							      MIX_DEFIGAIN);
#endif
			}
			if (stream->type == VORTEX_PCM_ADB && en) {
				p = &vortex->pcm_vol[subdev];
				p->dma = dma;
				for (i = 0; i < nr_ch; i++)
					p->mixin[i] = mix[i];
				for (i = 0; i < ch_top; i++)
					p->vol[i] = 0;
			}
		}
#ifndef CHIP_AU8820
		else {
			if (nr_ch == 1 && stream->type == VORTEX_PCM_SPDIF)
				FUNC22(vortex, en, 0x14,
					     FUNC1(stream->dma),
					     FUNC3(1));
		}
		/* Reconnect SPDIF out when "spdif" device is down. */
		if ((stream->type == VORTEX_PCM_SPDIF) && (!en)) {
			FUNC22(vortex, 1, 0x14,
				     FUNC2(vortex->mixspdif[0]),
				     FUNC3(0));
			FUNC22(vortex, 1, 0x14,
				     FUNC2(vortex->mixspdif[1]),
				     FUNC3(1));
		}
#endif
	/* CAPTURE ROUTES. */
	} else {
		int src[2], mix[2];

		if (nr_ch < 1)
			return -EINVAL;

		/* Get SRC and MIXER hardware resources. */
		for (i = 0; i < nr_ch; i++) {
			if ((mix[i] =
			     FUNC14(vortex,
						   stream->resources, en,
						   VORTEX_RESOURCE_MIXOUT))
			    < 0) {
				FUNC10(stream->resources, 0,
				       sizeof(stream->resources));
				return -EBUSY;
			}
			if ((src[i] =
			     FUNC14(vortex,
						   stream->resources, en,
						   VORTEX_RESOURCE_SRC)) < 0) {
				FUNC10(stream->resources, 0,
				       sizeof(stream->resources));
				return -EBUSY;
			}
		}

		/* Make capture routes. */
		FUNC17(vortex, en, FUNC5(0), mix[0], 0);
		FUNC16(vortex, en, 0x11, mix[0], src[0]);
		if (nr_ch == 1) {
			FUNC17(vortex, en,
						    FUNC5(1), mix[0], 0);
			FUNC18(vortex, en,
						     src[0],
						     src[0], dma);
		} else {
			FUNC17(vortex, en,
						    FUNC5(1), mix[1], 0);
			FUNC16(vortex, en, 0x11, mix[1],
						  src[1]);
			FUNC20(vortex, en,
							 src[1], src[0],
							 src[1], dma);
		}
	}
	vortex->dma_adb[dma].nr_ch = nr_ch;

#if 0
	/* AC97 Codec channel setup. FIXME: this has no effect on some cards !! */
	if (nr_ch < 4) {
		/* Copy stereo to rear channel (surround) */
		snd_ac97_write_cache(vortex->codec,
				     AC97_SIGMATEL_DAC2INVERT,
				     snd_ac97_read(vortex->codec,
						   AC97_SIGMATEL_DAC2INVERT)
				     | 4);
	} else {
		/* Allow separate front and rear channels. */
		snd_ac97_write_cache(vortex->codec,
				     AC97_SIGMATEL_DAC2INVERT,
				     snd_ac97_read(vortex->codec,
						   AC97_SIGMATEL_DAC2INVERT)
				     & ~((u32)
					 4));
	}
#endif
	return dma;
}