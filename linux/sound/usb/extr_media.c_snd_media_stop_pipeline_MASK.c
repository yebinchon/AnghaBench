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
struct snd_usb_substream {struct media_ctl* media_ctl; } ;
struct media_ctl {TYPE_1__* media_dev; int /*<<< orphan*/  media_entity; } ;
struct TYPE_2__ {int /*<<< orphan*/  graph_mutex; int /*<<< orphan*/  (* disable_source ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_usb_substream *subs)
{
	struct media_ctl *mctl = subs->media_ctl;

	if (!mctl)
		return;

	FUNC0(&mctl->media_dev->graph_mutex);
	if (mctl->media_dev->disable_source)
		mctl->media_dev->disable_source(&mctl->media_entity);
	FUNC1(&mctl->media_dev->graph_mutex);
}