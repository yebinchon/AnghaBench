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
struct snd_als300 {scalar_t__ port; } ;
struct snd_ac97 {struct snd_als300* private_data; } ;

/* Variables and functions */
 scalar_t__ AC97_ACCESS ; 
 int AC97_BUSY ; 
 scalar_t__ AC97_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 *ac97,
				unsigned short reg, unsigned short val)
{
	int i;
	struct snd_als300 *chip = ac97->private_data;

	for (i = 0; i < 1000; i++) {
		if ((FUNC0(chip->port+AC97_STATUS) & (AC97_BUSY)) == 0)
			break;
		FUNC2(10);
	}
	FUNC1((reg << 24) | val, chip->port+AC97_ACCESS);
}