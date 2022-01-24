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
struct atmel_ac97c {int /*<<< orphan*/  cur_format; int /*<<< orphan*/  cur_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opened_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct atmel_ac97c* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *hw_params)
{
	struct atmel_ac97c *chip = FUNC6(substream);
	int retval;

	retval = FUNC5(substream,
					FUNC2(hw_params));
	if (retval < 0)
		return retval;

	/* Set restrictions to params. */
	FUNC0(&opened_mutex);
	chip->cur_rate = FUNC4(hw_params);
	chip->cur_format = FUNC3(hw_params);
	FUNC1(&opened_mutex);

	return retval;
}