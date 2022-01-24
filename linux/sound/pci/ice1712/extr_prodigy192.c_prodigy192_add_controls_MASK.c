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
struct snd_ice1712 {TYPE_2__* pcm; int /*<<< orphan*/  card; struct prodigy192_spec* spec; } ;
struct prodigy192_spec {scalar_t__ ak4114; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int /*<<< orphan*/  substream; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/ * ak4114_controls ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*) ; 
 int /*<<< orphan*/ * stac_controls ; 

__attribute__((used)) static int FUNC5(struct snd_ice1712 *ice)
{
	struct prodigy192_spec *spec = ice->spec;
	unsigned int i;
	int err;

	for (i = 0; i < FUNC0(stac_controls); i++) {
		err = FUNC2(ice->card,
				  FUNC3(&stac_controls[i], ice));
		if (err < 0)
			return err;
	}
	if (spec->ak4114) {
		/* ak4114 is connected */
		for (i = 0; i < FUNC0(ak4114_controls); i++) {
			err = FUNC2(ice->card,
					  FUNC3(&ak4114_controls[i],
						       ice));
			if (err < 0)
				return err;
		}
		err = FUNC1(spec->ak4114,
				NULL, /* ak4114 in MIO/DI/O handles no IEC958 output */
				ice->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
		if (err < 0)
			return err;
	}
	FUNC4(ice);
	return 0;
}