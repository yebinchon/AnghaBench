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
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,scalar_t__) ; 
 scalar_t__ ALI_SPDIF_CS ; 
 scalar_t__ ALI_SPDIF_CTRL ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_ali *codec, unsigned int rate)
{
	unsigned char  bVal;
	unsigned int  dwRate;
	
	switch (rate) {
	case 32000: dwRate = 0x300; break;
	case 48000: dwRate = 0x200; break;
	default: dwRate = 0; break;
	}
	
	bVal  = FUNC1(FUNC0(codec, ALI_SPDIF_CTRL));
	bVal &= (unsigned char)(~(1<<6));
	
	bVal |= 0x80;		/* select right */
	FUNC2(bVal, FUNC0(codec, ALI_SPDIF_CTRL));
	FUNC2(dwRate | 0x20, FUNC0(codec, ALI_SPDIF_CS + 2));
	
	bVal &= ~0x80;	/* select left */
	FUNC2(bVal, FUNC0(codec, ALI_SPDIF_CTRL));
	FUNC3(rate | 0x10, FUNC0(codec, ALI_SPDIF_CS + 2));
}