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
struct ua101 {int /*<<< orphan*/  rate_feedback_wait; int /*<<< orphan*/  alsa_capture_wait; int /*<<< orphan*/  states; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CAPTURE_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ua101 *ua)
{
	if (FUNC0(USB_CAPTURE_RUNNING, &ua->states)) {
		FUNC1(&ua->alsa_capture_wait);
		FUNC1(&ua->rate_feedback_wait);
	}
}