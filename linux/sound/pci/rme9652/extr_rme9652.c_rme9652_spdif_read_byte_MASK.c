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
struct snd_rme9652 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_SPDIF_CLOCK ; 
 int RME9652_SPDIF_READ ; 
 int /*<<< orphan*/  RME9652_status_register ; 
 int FUNC0 (struct snd_rme9652*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2 (struct snd_rme9652 *rme9652)
{
	long mask;
	long val;
	long i;

	val = 0;

	for (i = 0, mask = 0x80;  i < 8; i++, mask >>= 1) {
		FUNC1 (rme9652, RME9652_SPDIF_CLOCK, 1);
		if (FUNC0 (rme9652, RME9652_status_register) & RME9652_SPDIF_READ)
			val |= mask;
		FUNC1 (rme9652, RME9652_SPDIF_CLOCK, 0);
	}

	return val;
}