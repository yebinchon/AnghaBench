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
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* card; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const* const) ; 
 struct snd_kcontrol* FUNC1 (struct snd_ac97*,char const* const) ; 
 int FUNC2 (TYPE_2__*,struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC4 (char*,unsigned int const*) ; 

__attribute__((used)) static int FUNC5(struct snd_ac97 *ac97, char *name,
				const unsigned int *tlv,
				const char * const *slaves)
{
	struct snd_kcontrol *kctl;
	const char * const *s;
	int err;

	kctl = FUNC4(name, tlv);
	if (!kctl)
		return -ENOMEM;
	err = FUNC2(ac97->bus->card, kctl);
	if (err < 0)
		return err;

	for (s = slaves; *s; s++) {
		struct snd_kcontrol *sctl;

		sctl = FUNC1(ac97, *s);
		if (!sctl) {
			FUNC0(ac97->bus->card->dev,
				"Cannot find slave %s, skipped\n", *s);
			continue;
		}
		err = FUNC3(kctl, sctl);
		if (err < 0)
			return err;
	}
	return 0;
}