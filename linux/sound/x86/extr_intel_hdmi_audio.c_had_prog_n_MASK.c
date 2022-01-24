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
typedef  int u32 ;
struct snd_intelhad {scalar_t__ dp_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_N_ENABLE ; 
 int FUNC0 (int) ; 
 int DP_NAUD_VAL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_intelhad*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(u32 aud_samp_freq, u32 *n_param,
		      struct snd_intelhad *intelhaddata)
{
	int n_val;

	if (intelhaddata->dp_output) {
		/*
		 * According to DP specs, Maud and Naud values hold
		 * a relationship, which is stated as:
		 * Maud/Naud = 512 * fs / f_LS_Clk
		 * where, fs is the sampling frequency of the audio stream
		 * and Naud is 32768 for Async clock.
		 */

		n_val = DP_NAUD_VAL;
	} else
		n_val =	FUNC1(aud_samp_freq);

	if (n_val < 0)
		return n_val;

	FUNC2(intelhaddata, AUD_N_ENABLE, (FUNC0(24) | n_val));
	*n_param = n_val;
	return 0;
}