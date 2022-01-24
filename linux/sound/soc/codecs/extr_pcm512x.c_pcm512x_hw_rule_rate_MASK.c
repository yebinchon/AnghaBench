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
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; struct pcm512x_priv* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;
struct pcm512x_priv {int dummy; } ;
typedef  int /*<<< orphan*/  ranges ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_interval*) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_interval*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct pcm512x_priv*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_interval*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_hw_params *params,
				struct snd_pcm_hw_rule *rule)
{
	struct pcm512x_priv *pcm512x = rule->private;
	struct snd_interval ranges[2];
	int frame_size;

	frame_size = FUNC6(params);
	if (frame_size < 0)
		return frame_size;

	switch (frame_size) {
	case 32:
		/* No hole when the frame size is 32. */
		return 0;
	case 48:
	case 64:
		/* There is only one hole in the range of supported
		 * rates, but it moves with the frame size.
		 */
		FUNC3(ranges, 0, sizeof(ranges));
		ranges[0].min = 8000;
		ranges[0].max = FUNC4(pcm512x) / frame_size / 2;
		ranges[1].min = FUNC1(16000000, frame_size);
		ranges[1].max = 384000;
		break;
	default:
		return -EINVAL;
	}

	return FUNC5(FUNC2(params, rule->var),
				   FUNC0(ranges), ranges, 0);
}