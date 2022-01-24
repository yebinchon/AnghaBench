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
struct snd_kcontrol {size_t private_value; } ;
struct TYPE_4__ {unsigned short* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int /*<<< orphan*/  page_mutex; } ;
struct TYPE_6__ {unsigned short mask; unsigned short shift; } ;

/* Variables and functions */
 int AC97_INT_PAGING ; 
 unsigned short AC97_PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int,unsigned short,unsigned short) ; 
 struct snd_ac97* FUNC4 (struct snd_kcontrol*) ; 
 TYPE_3__* vt1618_uaj ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	unsigned short datpag, uaj;
	struct snd_ac97 *pac97 = FUNC4(kcontrol);

	FUNC0(&pac97->page_mutex);

	datpag = FUNC2(pac97, AC97_INT_PAGING) & AC97_PAGE_MASK;
	FUNC3(pac97, AC97_INT_PAGING, AC97_PAGE_MASK, 0);

	uaj = FUNC2(pac97, 0x60) &
		vt1618_uaj[kcontrol->private_value].mask;

	FUNC3(pac97, AC97_INT_PAGING, AC97_PAGE_MASK, datpag);
	FUNC1(&pac97->page_mutex);

	ucontrol->value.enumerated.item[0] = uaj >>
		vt1618_uaj[kcontrol->private_value].shift;

	return 0;
}