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
struct snd_interval {unsigned int min; int openmin; scalar_t__ integer; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_interval*) ; 

__attribute__((used)) static int FUNC2(struct snd_interval *i, unsigned int min, int openmin)
{
	int changed = 0;
	if (i->min < min) {
		i->min = min;
		i->openmin = openmin;
		changed = 1;
	} else if (i->min == min && !i->openmin && openmin) {
		i->openmin = 1;
		changed = 1;
	}
	if (i->integer) {
		if (i->openmin) {
			i->min++;
			i->openmin = 0;
		}
	}
	if (FUNC0(i)) {
		FUNC1(i);
		return -EINVAL;
	}
	return changed;
}