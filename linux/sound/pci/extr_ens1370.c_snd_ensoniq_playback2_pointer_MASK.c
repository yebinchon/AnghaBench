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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct ensoniq {int /*<<< orphan*/  reg_lock; } ;
typedef  size_t snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  DAC2_SIZE ; 
 int ES_DAC2_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ES_PAGE_DAC ; 
 int /*<<< orphan*/  FUNC1 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  MEM_PAGE ; 
 size_t FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ensoniq* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC9(struct snd_pcm_substream *substream)
{
	struct ensoniq *ensoniq = FUNC6(substream);
	size_t ptr;

	FUNC7(&ensoniq->reg_lock);
	if (FUNC4(FUNC1(ensoniq, CONTROL)) & ES_DAC2_EN) {
		FUNC5(FUNC0(ES_PAGE_DAC), FUNC1(ensoniq, MEM_PAGE));
		ptr = FUNC2(FUNC4(FUNC1(ensoniq, DAC2_SIZE)));
		ptr = FUNC3(substream->runtime, ptr);
	} else {
		ptr = 0;
	}
	FUNC8(&ensoniq->reg_lock);
	return ptr;
}