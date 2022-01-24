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
struct ua101 {int /*<<< orphan*/  mutex; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ua101*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *hw_params)
{
	struct ua101 *ua = substream->private_data;
	int err;

	FUNC0(&ua->mutex);
	err = FUNC4(ua);
	FUNC1(&ua->mutex);
	if (err < 0)
		return err;

	return FUNC3(substream,
						FUNC2(hw_params));
}