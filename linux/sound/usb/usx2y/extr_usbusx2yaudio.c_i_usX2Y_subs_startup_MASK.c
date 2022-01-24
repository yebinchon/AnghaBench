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
struct usX2Ydev {int /*<<< orphan*/  prepare_wait_queue; struct snd_usX2Y_substream* prepare_subs; } ;
struct urb {scalar_t__ start_frame; struct snd_usX2Y_substream* context; } ;
struct snd_usX2Y_substream {int /*<<< orphan*/  state; TYPE_1__** urb; struct usX2Ydev* usX2Y; } ;
struct TYPE_2__ {scalar_t__ start_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct usX2Ydev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct snd_usX2Y_substream *subs = urb->context;
	struct usX2Ydev *usX2Y = subs->usX2Y;
	struct snd_usX2Y_substream *prepare_subs = usX2Y->prepare_subs;
	if (NULL != prepare_subs)
		if (urb->start_frame == prepare_subs->urb[0]->start_frame) {
			FUNC2(usX2Y);
			FUNC0(&prepare_subs->state);
			FUNC3(&usX2Y->prepare_wait_queue);
		}

	FUNC1(urb);
}