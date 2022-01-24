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
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {TYPE_2__* pcm; int /*<<< orphan*/  card; struct qtet_spec* spec; } ;
struct qtet_spec {int /*<<< orphan*/  ak4113; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int /*<<< orphan*/  substream; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct snd_kcontrol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * qtet_controls ; 
 int /*<<< orphan*/  qtet_master_db_scale ; 
 int /*<<< orphan*/  slave_vols ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC5 (int /*<<< orphan*/ *,struct snd_ice1712*) ; 
 int FUNC6 (struct snd_ice1712*) ; 

__attribute__((used)) static int FUNC7(struct snd_ice1712 *ice)
{
	struct qtet_spec *spec = ice->spec;
	int err, i;
	struct snd_kcontrol *vmaster;
	err = FUNC6(ice);
	if (err < 0)
		return err;
	for (i = 0; i < FUNC0(qtet_controls); i++) {
		err = FUNC3(ice->card,
				FUNC5(&qtet_controls[i], ice));
		if (err < 0)
			return err;
	}

	/* Create virtual master control */
	vmaster = FUNC4("Master Playback Volume",
			qtet_master_db_scale);
	if (!vmaster)
		return -ENOMEM;
	FUNC1(ice->card, vmaster, slave_vols);
	err = FUNC3(ice->card, vmaster);
	if (err < 0)
		return err;
	/* only capture SPDIF over AK4113 */
	return FUNC2(spec->ak4113,
			ice->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
}