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
struct urb {int /*<<< orphan*/  (* complete ) (struct urb*) ;struct ua101* context; } ;
struct ua101 {int /*<<< orphan*/  alsa_playback_wait; int /*<<< orphan*/  states; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYBACK_URB_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct ua101 *ua = urb->context;

	urb->complete = playback_urb_complete;
	FUNC0(urb);

	FUNC1(PLAYBACK_URB_COMPLETED, &ua->states);
	FUNC2(&ua->alsa_playback_wait);
}