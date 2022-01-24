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
struct snd_wss {int /*<<< orphan*/  (* set_capture_format ) (struct snd_wss*,struct snd_pcm_hw_params*,unsigned char) ;} ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_wss* FUNC5 (struct snd_pcm_substream*) ; 
 unsigned char FUNC6 (struct snd_wss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_wss*,struct snd_pcm_hw_params*,unsigned char) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *hw_params)
{
	struct snd_wss *chip = FUNC5(substream);
	unsigned char new_cdfr;
	int err;

	if ((err = FUNC4(substream, FUNC0(hw_params))) < 0)
		return err;
	new_cdfr = FUNC6(chip, FUNC2(hw_params),
			   FUNC1(hw_params)) |
			   FUNC7(FUNC3(hw_params));
	chip->set_capture_format(chip, hw_params, new_cdfr);
	return 0;
}