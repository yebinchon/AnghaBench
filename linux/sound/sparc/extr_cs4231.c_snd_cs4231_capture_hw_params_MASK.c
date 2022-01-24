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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_cs4231 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs4231*,struct snd_pcm_hw_params*,unsigned char) ; 
 unsigned char FUNC5 (struct snd_cs4231*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_cs4231* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *hw_params)
{
	struct snd_cs4231 *chip = FUNC8(substream);
	unsigned char new_cdfr;
	int err;

	err = FUNC7(substream,
					FUNC0(hw_params));
	if (err < 0)
		return err;
	new_cdfr = FUNC5(chip, FUNC2(hw_params),
					 FUNC1(hw_params)) |
		FUNC6(FUNC3(hw_params));
	FUNC4(chip, hw_params, new_cdfr);

	return 0;
}