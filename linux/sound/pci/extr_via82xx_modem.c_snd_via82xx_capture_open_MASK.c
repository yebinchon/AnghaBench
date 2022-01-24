#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct viadev {int dummy; } ;
struct via82xx_modem {size_t capture_devno; struct viadev* devs; } ;
struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct TYPE_2__ {size_t device; } ;

/* Variables and functions */
 struct via82xx_modem* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct via82xx_modem*,struct viadev*,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct via82xx_modem *chip = FUNC0(substream);
	struct viadev *viadev = &chip->devs[chip->capture_devno + substream->pcm->device];

	return FUNC1(chip, viadev, substream);
}