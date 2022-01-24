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
struct snd_pcm_substream {struct isight* private_data; } ;
struct isight {int /*<<< orphan*/  mutex; int /*<<< orphan*/  pcm_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isight*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct isight *isight = substream->private_data;

	FUNC0(isight->pcm_active, false);

	FUNC2(&isight->mutex);
	FUNC1(isight);
	FUNC3(&isight->mutex);

	return FUNC4(substream);
}