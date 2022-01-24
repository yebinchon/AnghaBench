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
struct fw_scs1x {int error; int transaction_running; int /*<<< orphan*/  work; scalar_t__ transaction_bytes; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fw_card *card, int rcode,
			       void *data, size_t length, void *callback_data)
{
	struct fw_scs1x *scs = callback_data;

	if (!FUNC0(rcode)) {
		/* Don't retry for this data. */
		if (rcode == RCODE_COMPLETE)
			scs->transaction_bytes = 0;
	} else {
		scs->error = true;
	}

	scs->transaction_running = false;
	FUNC1(&scs->work);
}