#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_6__ {TYPE_2__ integer; TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;

/* Variables and functions */
 unsigned char ICE1712_SPDIF_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 unsigned int PRO_RATE_DEFAULT ; 
 int /*<<< orphan*/  RATE ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,unsigned int,int) ; 
 struct snd_ice1712* FUNC6 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol,
					      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC6(kcontrol);
	static const unsigned int xrate[13] = {
		8000, 9600, 11025, 12000, 16000, 22050, 24000,
		32000, 44100, 48000, 64000, 88200, 96000
	};
	unsigned char oval;
	int change = 0;

	FUNC7(&ice->reg_lock);
	oval = FUNC1(FUNC0(ice, RATE));
	if (ucontrol->value.enumerated.item[0] == 13) {
		FUNC3(oval | ICE1712_SPDIF_MASTER, FUNC0(ice, RATE));
	} else {
		PRO_RATE_DEFAULT = xrate[ucontrol->value.integer.value[0] % 13];
		FUNC8(&ice->reg_lock);
		FUNC5(ice, PRO_RATE_DEFAULT, 1);
		FUNC7(&ice->reg_lock);
	}
	change = FUNC1(FUNC0(ice, RATE)) != oval;
	FUNC8(&ice->reg_lock);

	if ((oval & ICE1712_SPDIF_MASTER) !=
	    (FUNC1(FUNC0(ice, RATE)) & ICE1712_SPDIF_MASTER))
		FUNC4(ice, FUNC2(ice));

	return change;
}