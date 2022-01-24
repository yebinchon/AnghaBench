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
struct snd_sb {int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALS4K_GCRA4_FIFO2_CURRENT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 struct snd_sb* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_sb *chip = FUNC2(substream);
	unsigned int result;

	FUNC3(&chip->reg_lock);	
	result = FUNC1(chip, ALS4K_GCRA4_FIFO2_CURRENT_ADDR);
	FUNC4(&chip->reg_lock);
	result &= 0xffff;
	return FUNC0( substream->runtime, result );
}