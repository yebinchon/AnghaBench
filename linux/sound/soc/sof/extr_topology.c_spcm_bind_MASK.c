#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_sof_widget {int /*<<< orphan*/  comp_id; } ;
struct TYPE_5__ {TYPE_1__* caps; } ;
struct snd_sof_pcm {TYPE_3__* stream; TYPE_2__ pcm; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  comp_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct snd_sof_widget* FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_sof_dev *sdev, struct snd_sof_pcm *spcm,
		     int dir)
{
	struct snd_sof_widget *host_widget;

	host_widget = FUNC1(sdev,
						 spcm->pcm.caps[dir].name,
						 dir);
	if (!host_widget) {
		FUNC0(sdev->dev, "can't find host comp to bind pcm\n");
		return -EINVAL;
	}

	spcm->stream[dir].comp_id = host_widget->comp_id;

	return 0;
}