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
struct cygnus_audio {scalar_t__ audio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ANY_CAPTURE_IRQ ; 
 int ANY_PLAYBACK_IRQ ; 
 scalar_t__ INTH_R5F_CLEAR_OFFSET ; 
 scalar_t__ INTH_R5F_STATUS_OFFSET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct cygnus_audio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cygnus_audio*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	u32 r5_status;
	struct cygnus_audio *cygaud = data;

	/*
	 * R5 status bits	Description
	 *  0		ESR0 (playback FIFO interrupt)
	 *  1		ESR1 (playback rbuf interrupt)
	 *  2		ESR2 (capture rbuf interrupt)
	 *  3		ESR3 (Freemark play. interrupt)
	 *  4		ESR4 (Fullmark capt. interrupt)
	 */
	r5_status = FUNC2(cygaud->audio + INTH_R5F_STATUS_OFFSET);

	if (!(r5_status & (ANY_PLAYBACK_IRQ | ANY_CAPTURE_IRQ)))
		return IRQ_NONE;

	/* If playback interrupt happened */
	if (ANY_PLAYBACK_IRQ & r5_status) {
		FUNC1(cygaud);
		FUNC3(ANY_PLAYBACK_IRQ & r5_status,
			cygaud->audio + INTH_R5F_CLEAR_OFFSET);
	}

	/* If  capture interrupt happened */
	if (ANY_CAPTURE_IRQ & r5_status) {
		FUNC0(cygaud);
		FUNC3(ANY_CAPTURE_IRQ & r5_status,
			cygaud->audio + INTH_R5F_CLEAR_OFFSET);
	}

	return IRQ_HANDLED;
}