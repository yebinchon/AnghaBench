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
struct snd_pcm_substream {int dummy; } ;
struct cs4231_dma_control {int /*<<< orphan*/  (* enable ) (struct cs4231_dma_control*,int) ;int /*<<< orphan*/  (* prepare ) (struct cs4231_dma_control*,int) ;} ;
struct snd_cs4231 {int /*<<< orphan*/  c_periods_sent; int /*<<< orphan*/  capture_substream; struct cs4231_dma_control c_dma; int /*<<< orphan*/  p_periods_sent; int /*<<< orphan*/  playback_substream; struct cs4231_dma_control p_dma; } ;

/* Variables and functions */
 unsigned int CS4231_PLAYBACK_ENABLE ; 
 unsigned int CS4231_RECORD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct cs4231_dma_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_cs4231* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_dma_control*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_dma_control*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cs4231_dma_control*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cs4231_dma_control*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_dma_control*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cs4231_dma_control*,int) ; 

__attribute__((used)) static void FUNC8(struct snd_pcm_substream *substream,
			       unsigned int what, int on)
{
	struct snd_cs4231 *chip = FUNC1(substream);
	struct cs4231_dma_control *dma_cont;

	if (what & CS4231_PLAYBACK_ENABLE) {
		dma_cont = &chip->p_dma;
		if (on) {
			dma_cont->prepare(dma_cont, 0);
			dma_cont->enable(dma_cont, 1);
			FUNC0(dma_cont,
				chip->playback_substream,
				&chip->p_periods_sent);
		} else {
			dma_cont->enable(dma_cont, 0);
		}
	}
	if (what & CS4231_RECORD_ENABLE) {
		dma_cont = &chip->c_dma;
		if (on) {
			dma_cont->prepare(dma_cont, 1);
			dma_cont->enable(dma_cont, 1);
			FUNC0(dma_cont,
				chip->capture_substream,
				&chip->c_periods_sent);
		} else {
			dma_cont->enable(dma_cont, 0);
		}
	}
}