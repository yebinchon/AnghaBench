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
typedef  int u32 ;
struct snd_dice {int notification_bits; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  clock_accepted; int /*<<< orphan*/  lock; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int NOTIFY_LOCK_CHG ; 
 int /*<<< orphan*/  RCODE_ADDRESS_ERROR ; 
 int /*<<< orphan*/  RCODE_COMPLETE ; 
 int /*<<< orphan*/  RCODE_TYPE_ERROR ; 
 int TCODE_WRITE_QUADLET_REQUEST ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,struct fw_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_card *card, struct fw_request *request,
			      int tcode, int destination, int source,
			      int generation, unsigned long long offset,
			      void *data, size_t length, void *callback_data)
{
	struct snd_dice *dice = callback_data;
	u32 bits;
	unsigned long flags;

	if (tcode != TCODE_WRITE_QUADLET_REQUEST) {
		FUNC2(card, request, RCODE_TYPE_ERROR);
		return;
	}
	if ((offset & 3) != 0) {
		FUNC2(card, request, RCODE_ADDRESS_ERROR);
		return;
	}

	bits = FUNC0(data);

	FUNC3(&dice->lock, flags);
	dice->notification_bits |= bits;
	FUNC4(&dice->lock, flags);

	FUNC2(card, request, RCODE_COMPLETE);

	if (bits & NOTIFY_LOCK_CHG)
		FUNC1(&dice->clock_accepted);
	FUNC5(&dice->hwdep_wait);
}