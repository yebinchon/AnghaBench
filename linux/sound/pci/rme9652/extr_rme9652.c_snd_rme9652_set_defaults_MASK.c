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
struct snd_rme9652 {int control_register; scalar_t__ passthru; scalar_t__ thru_bits; } ;

/* Variables and functions */
 unsigned int RME9652_NCHANNELS ; 
 scalar_t__ RME9652_control_register ; 
 int RME9652_inp_0 ; 
 scalar_t__ RME9652_thru_base ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rme9652*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rme9652*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct snd_rme9652 *rme9652)
{
	unsigned int k;

	/* ASSUMPTION: rme9652->lock is either held, or
	   there is no need to hold it (e.g. during module
	   initialization).
	 */

	/* set defaults:

	   SPDIF Input via Coax 
	   autosync clock mode
	   maximum latency (7 = 8192 samples, 64Kbyte buffer,
	   which implies 2 4096 sample, 32Kbyte periods).
	   
	   if rev 1.5, initialize the S/PDIF receiver.

	 */

	rme9652->control_register =
	    RME9652_inp_0 | FUNC1(7);

	FUNC4(rme9652, RME9652_control_register, rme9652->control_register);

	FUNC2(rme9652);
	FUNC0(rme9652);

	/* default: thru off for all channels */

	for (k = 0; k < RME9652_NCHANNELS; ++k)
		FUNC4(rme9652, RME9652_thru_base + k * 4, 0);

	rme9652->thru_bits = 0;
	rme9652->passthru = 0;

	/* set a default rate so that the channel map is set up */

	FUNC3(rme9652, 48000);
}