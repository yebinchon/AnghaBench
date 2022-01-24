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
struct snd_dbri {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int D_SDP_FIXED ; 
 int D_SDP_FROM_SER ; 
 int D_SDP_MEM ; 
 int D_SDP_MSB ; 
 int D_SDP_TO_SER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_dbri*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dbri*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_dbri *dbri)
{
	unsigned long flags;

	FUNC2(&dbri->lock, flags);
	/*
	 * Data mode:
	 * Pipe  4: Send timeslots 1-4 (audio data)
	 * Pipe 20: Send timeslots 5-8 (part of ctrl data)
	 * Pipe  6: Receive timeslots 1-4 (audio data)
	 * Pipe 21: Receive timeslots 6-7. We can only receive 20 bits via
	 *          interrupt, and the rest of the data (slot 5 and 8) is
	 *          not relevant for us (only for doublechecking).
	 *
	 * Control mode:
	 * Pipe 17: Send timeslots 1-4 (slots 5-8 are read only)
	 * Pipe 18: Receive timeslot 1 (clb).
	 * Pipe 19: Receive timeslot 7 (version).
	 */

	FUNC1(dbri, 4, D_SDP_MEM | D_SDP_TO_SER | D_SDP_MSB);
	FUNC1(dbri, 20, D_SDP_FIXED | D_SDP_TO_SER | D_SDP_MSB);
	FUNC1(dbri, 6, D_SDP_MEM | D_SDP_FROM_SER | D_SDP_MSB);
	FUNC1(dbri, 21, D_SDP_FIXED | D_SDP_FROM_SER | D_SDP_MSB);

	FUNC1(dbri, 17, D_SDP_FIXED | D_SDP_TO_SER | D_SDP_MSB);
	FUNC1(dbri, 18, D_SDP_FIXED | D_SDP_FROM_SER | D_SDP_MSB);
	FUNC1(dbri, 19, D_SDP_FIXED | D_SDP_FROM_SER | D_SDP_MSB);
	FUNC3(&dbri->lock, flags);

	FUNC0(dbri);
}