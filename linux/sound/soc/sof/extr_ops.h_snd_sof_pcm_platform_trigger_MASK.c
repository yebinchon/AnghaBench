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
struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* pcm_trigger ) (struct snd_sof_dev*,struct snd_pcm_substream*,int) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct snd_sof_dev*) ; 
 int FUNC1 (struct snd_sof_dev*,struct snd_pcm_substream*,int) ; 

__attribute__((used)) static inline int
FUNC2(struct snd_sof_dev *sdev,
			     struct snd_pcm_substream *substream, int cmd)
{
	if (FUNC0(sdev) && FUNC0(sdev)->pcm_trigger)
		return FUNC0(sdev)->pcm_trigger(sdev, substream, cmd);

	return 0;
}