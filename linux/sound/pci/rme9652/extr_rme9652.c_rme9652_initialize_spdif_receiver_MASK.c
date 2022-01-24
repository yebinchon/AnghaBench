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
struct snd_rme9652 {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  RME9652_SPDIF_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*,int,int) ; 

__attribute__((used)) static void FUNC1 (struct snd_rme9652 *rme9652)
{
	/* XXX what unsets this ? */

	rme9652->control_register |= RME9652_SPDIF_RESET;

	FUNC0 (rme9652, 4, 0x40);
	FUNC0 (rme9652, 17, 0x13);
	FUNC0 (rme9652, 6, 0x02);
}