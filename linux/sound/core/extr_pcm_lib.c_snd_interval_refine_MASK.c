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
struct snd_interval {scalar_t__ min; int openmin; scalar_t__ max; int openmax; int integer; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_interval*) ; 

int FUNC4(struct snd_interval *i, const struct snd_interval *v)
{
	int changed = 0;
	if (FUNC0(FUNC2(i)))
		return -EINVAL;
	if (i->min < v->min) {
		i->min = v->min;
		i->openmin = v->openmin;
		changed = 1;
	} else if (i->min == v->min && !i->openmin && v->openmin) {
		i->openmin = 1;
		changed = 1;
	}
	if (i->max > v->max) {
		i->max = v->max;
		i->openmax = v->openmax;
		changed = 1;
	} else if (i->max == v->max && !i->openmax && v->openmax) {
		i->openmax = 1;
		changed = 1;
	}
	if (!i->integer && v->integer) {
		i->integer = 1;
		changed = 1;
	}
	if (i->integer) {
		if (i->openmin) {
			i->min++;
			i->openmin = 0;
		}
		if (i->openmax) {
			i->max--;
			i->openmax = 0;
		}
	} else if (!i->openmin && !i->openmax && i->min == i->max)
		i->integer = 1;
	if (FUNC1(i)) {
		FUNC3(i);
		return -EINVAL;
	}
	return changed;
}