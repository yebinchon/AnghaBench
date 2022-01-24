#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  virtual; int /*<<< orphan*/  timer; int /*<<< orphan*/ * timer_card; } ;
typedef  TYPE_1__ snd_wavefront_midi_t ;
typedef  int /*<<< orphan*/  snd_wavefront_card_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 TYPE_1__* midi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	snd_wavefront_midi_t *midi = FUNC0(midi, t, timer);
	snd_wavefront_card_t *card = midi->timer_card;
	unsigned long flags;
	
	FUNC3 (&midi->virtual, flags);
	FUNC1(&midi->timer, 1 + jiffies);
	FUNC4 (&midi->virtual, flags);
	FUNC2(card);
}