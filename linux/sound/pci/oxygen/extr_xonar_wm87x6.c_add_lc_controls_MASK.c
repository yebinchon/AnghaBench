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
struct xonar_wm87x6 {struct snd_kcontrol** lc_controls; } ;
struct snd_kcontrol {int dummy; } ;
struct oxygen {int /*<<< orphan*/  card; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 struct snd_kcontrol** lc_controls ; 
 int FUNC2 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC3 (struct snd_kcontrol**,struct oxygen*) ; 

__attribute__((used)) static int FUNC4(struct oxygen *chip)
{
	struct xonar_wm87x6 *data = chip->model_data;
	unsigned int i;
	struct snd_kcontrol *ctl;
	int err;

	FUNC1(FUNC0(lc_controls) != FUNC0(data->lc_controls));
	for (i = 0; i < FUNC0(lc_controls); ++i) {
		ctl = FUNC3(&lc_controls[i], chip);
		if (!ctl)
			return -ENOMEM;
		err = FUNC2(chip->card, ctl);
		if (err < 0)
			return err;
		data->lc_controls[i] = ctl;
	}
	return 0;
}