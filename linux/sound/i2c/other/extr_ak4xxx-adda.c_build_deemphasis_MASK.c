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
struct snd_kcontrol_new {char* name; int count; void* private_value; int /*<<< orphan*/  put; int /*<<< orphan*/  get; int /*<<< orphan*/  info; int /*<<< orphan*/  iface; scalar_t__ index; } ;
struct snd_akm4xxx {int type; int /*<<< orphan*/  card; scalar_t__ idx_offset; } ;
typedef  int /*<<< orphan*/  knew ;

/* Variables and functions */
 void* FUNC0 (int,int,int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
#define  SND_AK4355 134 
#define  SND_AK4358 133 
#define  SND_AK4381 132 
#define  SND_AK4524 131 
#define  SND_AK4528 130 
#define  SND_AK4529 129 
#define  SND_AK4620 128 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol_new*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snd_akm4xxx_deemphasis_get ; 
 int /*<<< orphan*/  snd_akm4xxx_deemphasis_info ; 
 int /*<<< orphan*/  snd_akm4xxx_deemphasis_put ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol_new*,struct snd_akm4xxx*) ; 

__attribute__((used)) static int FUNC4(struct snd_akm4xxx *ak, int num_emphs)
{
	int idx, err;
	struct snd_kcontrol_new knew;

	for (idx = 0; idx < num_emphs; idx++) {
		FUNC1(&knew, 0, sizeof(knew));
		knew.name = "Deemphasis";
		knew.index = idx + ak->idx_offset;
		knew.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
		knew.count = 1;
		knew.info = snd_akm4xxx_deemphasis_info;
		knew.get = snd_akm4xxx_deemphasis_get;
		knew.put = snd_akm4xxx_deemphasis_put;
		switch (ak->type) {
		case SND_AK4524:
		case SND_AK4528:
		case SND_AK4620:
			/* register 3 */
			knew.private_value = FUNC0(idx, 3, 0, 0);
			break;
		case SND_AK4529: {
			int shift = idx == 3 ? 6 : (2 - idx) * 2;
			/* register 8 with shift */
			knew.private_value = FUNC0(0, 8, shift, 0);
			break;
		}
		case SND_AK4355:
		case SND_AK4358:
			knew.private_value = FUNC0(idx, 3, 0, 0);
			break;
		case SND_AK4381:
			knew.private_value = FUNC0(idx, 1, 1, 0);
			break;
		default:
			return -EINVAL;
		}
		err = FUNC2(ak->card, FUNC3(&knew, ak));
		if (err < 0)
			return err;
	}
	return 0;
}