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
struct snd_emux {int client; scalar_t__ voices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(struct snd_emux *emu)
{
	if (emu->voices)
		FUNC0(emu);
		
	if (emu->client >= 0) {
		FUNC1(emu->client);
		emu->client = -1;
	}
}