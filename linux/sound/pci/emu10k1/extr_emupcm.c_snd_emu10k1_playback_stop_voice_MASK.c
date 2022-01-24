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
struct snd_emu10k1_voice {unsigned int number; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPF_CURRENTPITCH ; 
 int /*<<< orphan*/  CVCF ; 
 int /*<<< orphan*/  IFATN ; 
 int /*<<< orphan*/  IP ; 
 int /*<<< orphan*/  PTRX_PITCHTARGET ; 
 int /*<<< orphan*/  VTFT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_emu10k1 *emu, struct snd_emu10k1_voice *evoice)
{
	unsigned int voice;

	if (evoice == NULL)
		return;
	voice = evoice->number;
	FUNC1(emu, voice);
	FUNC0(emu, PTRX_PITCHTARGET, voice, 0);
	FUNC0(emu, CPF_CURRENTPITCH, voice, 0);
	FUNC0(emu, IFATN, voice, 0xffff);
	FUNC0(emu, VTFT, voice, 0xffff);
	FUNC0(emu, CVCF, voice, 0xffff);
	FUNC0(emu, IP, voice, 0);
}