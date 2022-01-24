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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct snd_akm4xxx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC6 (struct snd_akm4xxx*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_akm4xxx*,int,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_akm4xxx*,int,int,unsigned char) ; 
 struct snd_akm4xxx* FUNC9 (struct snd_kcontrol*) ; 
 unsigned char* vol_cvt_datt ; 

__attribute__((used)) static int FUNC10(struct snd_kcontrol *kcontrol, int addr,
		      unsigned char nval)
{
	struct snd_akm4xxx *ak = FUNC9(kcontrol);
	unsigned int mask = FUNC3(kcontrol->private_value);
	int chip = FUNC0(kcontrol->private_value);

	if (FUNC6(ak, chip, addr) == nval)
		return 0;

	FUNC7(ak, chip, addr, nval);
	if (FUNC5(kcontrol->private_value) && nval < 128)
		nval = vol_cvt_datt[nval];
	if (FUNC2(kcontrol->private_value) && nval >= 128)
		nval++; /* need to correct + 1 since both 127 and 128 are 0dB */
	if (FUNC1(kcontrol->private_value))
		nval = mask - nval;
	if (FUNC4(kcontrol->private_value))
		nval |= 0x80;
	/* printk(KERN_DEBUG "DEBUG - AK writing reg: chip %x addr %x,
	   nval %x\n", chip, addr, nval); */
	FUNC8(ak, chip, addr, nval);
	return 1;
}