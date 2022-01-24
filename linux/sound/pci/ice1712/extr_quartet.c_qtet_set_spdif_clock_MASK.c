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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 unsigned int CPLD_CKS_MASK ; 
 unsigned int CPLD_EXT_SPDIF ; 
 unsigned int CPLD_EXT_WORDCLOCK_1FS ; 
 unsigned int CPLD_EXT_WORDCLOCK_256FS ; 
 unsigned int CPLD_WORD_SEL ; 
#define  EXT_SPDIF_TYPE 130 
#define  EXT_WORDCLOCK_1FS_TYPE 129 
#define  EXT_WORDCLOCK_256FS_TYPE 128 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct snd_ice1712 *ice, int type)
{
	unsigned int old, new;

	old = new = FUNC0(ice);
	new &= ~(CPLD_CKS_MASK | CPLD_WORD_SEL);
	switch (type) {
	case EXT_SPDIF_TYPE:
		new |= CPLD_EXT_SPDIF;
		break;
	case EXT_WORDCLOCK_1FS_TYPE:
		new |= CPLD_EXT_WORDCLOCK_1FS;
		break;
	case EXT_WORDCLOCK_256FS_TYPE:
		new |= CPLD_EXT_WORDCLOCK_256FS;
		break;
	default:
		FUNC2();
	}
	if (old != new) {
		FUNC1(ice, new);
		/* changed */
		return 1;
	}
	return 0;
}