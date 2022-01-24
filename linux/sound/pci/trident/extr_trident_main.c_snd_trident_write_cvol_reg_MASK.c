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
struct snd_trident_voice {unsigned int CVol; int FMC; int RVol; int /*<<< orphan*/  number; } ;
struct snd_trident {scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_DX_FMC_RVOL_CVOL ; 
 int /*<<< orphan*/  CH_NX_ALPHA_FMS_FMC_RVOL_CVOL ; 
 int /*<<< orphan*/  T4D_LFO_GC_CIR ; 
 scalar_t__ TRIDENT_DEVICE_ID_NX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_trident * trident,
				       struct snd_trident_voice * voice,
				       unsigned int CVol)
{
	voice->CVol = CVol;
	FUNC1(voice->number, FUNC0(trident, T4D_LFO_GC_CIR));
	FUNC2(((voice->FMC & 0x0003) << 14) | ((voice->RVol & 0x007f) << 7) |
	     (voice->CVol & 0x007f),
	     FUNC0(trident, trident->device == TRIDENT_DEVICE_ID_NX ?
		      CH_NX_ALPHA_FMS_FMC_RVOL_CVOL : CH_DX_FMC_RVOL_CVOL));
}