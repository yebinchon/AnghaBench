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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  delayed_work; } ;
struct snd_pcm {struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm *pcm)
{
	struct snd_soc_pcm_runtime *rtd = pcm->private_data;

	/* need to sync the delayed work before releasing resources */
	FUNC0(&rtd->delayed_work);
	FUNC1(pcm);
}