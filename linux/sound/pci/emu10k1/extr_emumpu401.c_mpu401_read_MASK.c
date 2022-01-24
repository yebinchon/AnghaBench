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
struct snd_emu10k1_midi {scalar_t__ port; } ;
struct snd_emu10k1 {scalar_t__ port; scalar_t__ audigy; } ;

/* Variables and functions */
 unsigned char FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct snd_emu10k1*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned char FUNC2(struct snd_emu10k1 *emu,
					struct snd_emu10k1_midi *mpu, int idx)
{
	if (emu->audigy)
		return (unsigned char)FUNC1(emu, mpu->port + idx, 0);
	else
		return FUNC0(emu->port + mpu->port + idx);
}