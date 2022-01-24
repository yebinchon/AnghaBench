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
struct snd_emux {int /*<<< orphan*/  register_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_emux *emu)
{
	FUNC1(&emu->register_mutex);
	FUNC0(emu);
	FUNC2(&emu->register_mutex);
}