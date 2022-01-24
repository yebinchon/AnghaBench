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
struct ichdev {scalar_t__ pcm_open_flag; int /*<<< orphan*/  pcm; } ;

/* Variables and functions */
 struct ichdev* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct ichdev *ichdev = FUNC0(substream);

	if (ichdev->pcm_open_flag) {
		FUNC1(ichdev->pcm);
		ichdev->pcm_open_flag = 0;
	}
	return FUNC2(substream);
}