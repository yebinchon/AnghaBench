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
struct snd_trident {scalar_t__ device; } ;

/* Variables and functions */
 unsigned int BANK_B_EN ; 
 unsigned int ENDLP_IE ; 
 unsigned int MIDLP_IE ; 
 int /*<<< orphan*/  T4D_LFO_GC_CIR ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_trident * trident)
{
	unsigned int val;

	val = FUNC1(FUNC0(trident, T4D_LFO_GC_CIR));
	val |= ENDLP_IE;
	val |= MIDLP_IE;
	if (trident->device == TRIDENT_DEVICE_ID_SI7018)
		val |= BANK_B_EN;
	FUNC2(val, FUNC0(trident, T4D_LFO_GC_CIR));
}