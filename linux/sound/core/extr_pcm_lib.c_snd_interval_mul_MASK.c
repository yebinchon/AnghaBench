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
struct snd_interval {int openmin; int openmax; int integer; void* max; void* min; scalar_t__ empty; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_interval*) ; 

void FUNC2(const struct snd_interval *a, const struct snd_interval *b, struct snd_interval *c)
{
	if (a->empty || b->empty) {
		FUNC1(c);
		return;
	}
	c->empty = 0;
	c->min = FUNC0(a->min, b->min);
	c->openmin = (a->openmin || b->openmin);
	c->max = FUNC0(a->max,  b->max);
	c->openmax = (a->openmax || b->openmax);
	c->integer = (a->integer && b->integer);
}