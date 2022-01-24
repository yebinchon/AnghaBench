#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct snd_emux {scalar_t__ used; TYPE_2__ ops; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emux*) ; 

__attribute__((used)) static void
FUNC2(struct snd_emux *emu)
{
	FUNC0(emu->card->module);
	emu->used--;
	if (emu->used <= 0)
		FUNC1(emu);
	FUNC0(emu->ops.owner);
}