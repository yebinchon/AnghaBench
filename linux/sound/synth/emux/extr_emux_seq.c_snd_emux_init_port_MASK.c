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
struct snd_emux_port {scalar_t__ volume_atten; int /*<<< orphan*/  drum_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_DRUM_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emux_port*) ; 

__attribute__((used)) static void
FUNC1(struct snd_emux_port *p)
{
	p->drum_flags = DEFAULT_DRUM_FLAGS;
	p->volume_atten = 0;

	FUNC0(p);
}