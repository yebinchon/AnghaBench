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
union cmdret {unsigned short* retwords; } ;
struct snd_riptide {struct cmdif* cif; } ;
struct snd_ac97 {struct snd_riptide* private_data; } ;
struct cmdif {int dummy; } ;

/* Variables and functions */
 union cmdret CMDRET_ZERO ; 
 scalar_t__ FUNC0 (struct cmdif*,unsigned short,union cmdret*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned short,unsigned short) ; 

__attribute__((used)) static unsigned short FUNC3(struct snd_ac97 *ac97,
					     unsigned short reg)
{
	struct snd_riptide *chip = ac97->private_data;
	struct cmdif *cif = chip->cif;
	union cmdret rptr = CMDRET_ZERO;

	if (FUNC1(!cif))
		return 0;

	if (FUNC0(cif, reg, &rptr) != 0)
		FUNC0(cif, reg, &rptr);
	FUNC2("Read AC97 reg 0x%x got 0x%x\n", reg, rptr.retwords[1]);
	return rptr.retwords[1];
}