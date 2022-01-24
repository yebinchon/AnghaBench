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
struct nm256 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nm256*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nm256*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nm256 *chip)
{
	/* Reset everything. */
	FUNC0(chip, 0x0, 0x11);
	FUNC1(chip, 0x214, 0);
	/* stop sounds.. */
	//snd_nm256_playback_stop(chip);
	//snd_nm256_capture_stop(chip);
}