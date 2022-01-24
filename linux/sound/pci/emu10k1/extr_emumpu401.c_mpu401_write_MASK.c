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
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct snd_emu10k1 *emu,
				struct snd_emu10k1_midi *mpu, int data, int idx)
{
	if (emu->audigy)
		FUNC1(emu, mpu->port + idx, 0, data);
	else
		FUNC0(data, emu->port + mpu->port + idx);
}