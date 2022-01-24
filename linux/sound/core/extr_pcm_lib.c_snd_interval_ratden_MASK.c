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
struct snd_ratden {unsigned int den; unsigned int num_max; unsigned int num_min; unsigned int num_step; } ;
struct snd_interval {unsigned int min; int empty; int openmin; unsigned int max; int openmax; scalar_t__ integer; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (struct snd_interval*,struct snd_interval*) ; 
 scalar_t__ FUNC4 (struct snd_interval*) ; 

__attribute__((used)) static int FUNC5(struct snd_interval *i,
			       unsigned int rats_count,
			       const struct snd_ratden *rats,
			       unsigned int *nump, unsigned int *denp)
{
	unsigned int best_num, best_diff, best_den;
	unsigned int k;
	struct snd_interval t;
	int err;

	best_num = best_den = best_diff = 0;
	for (k = 0; k < rats_count; ++k) {
		unsigned int num;
		unsigned int den = rats[k].den;
		unsigned int q = i->min;
		int diff;
		num = FUNC2(q, den);
		if (num > rats[k].num_max)
			continue;
		if (num < rats[k].num_min)
			num = rats[k].num_max;
		else {
			unsigned int r;
			r = (num - rats[k].num_min) % rats[k].num_step;
			if (r != 0)
				num += rats[k].num_step - r;
		}
		diff = num - q * den;
		if (best_num == 0 ||
		    diff * best_den < best_diff * den) {
			best_diff = diff;
			best_den = den;
			best_num = num;
		}
	}
	if (best_den == 0) {
		i->empty = 1;
		return -EINVAL;
	}
	t.min = FUNC0(best_num, best_den);
	t.openmin = !!(best_num % best_den);
	
	best_num = best_den = best_diff = 0;
	for (k = 0; k < rats_count; ++k) {
		unsigned int num;
		unsigned int den = rats[k].den;
		unsigned int q = i->max;
		int diff;
		num = FUNC2(q, den);
		if (num < rats[k].num_min)
			continue;
		if (num > rats[k].num_max)
			num = rats[k].num_max;
		else {
			unsigned int r;
			r = (num - rats[k].num_min) % rats[k].num_step;
			if (r != 0)
				num -= r;
		}
		diff = q * den - num;
		if (best_num == 0 ||
		    diff * best_den < best_diff * den) {
			best_diff = diff;
			best_den = den;
			best_num = num;
		}
	}
	if (best_den == 0) {
		i->empty = 1;
		return -EINVAL;
	}
	t.max = FUNC1(best_num, best_den);
	t.openmax = !!(best_num % best_den);
	t.integer = 0;
	err = FUNC3(i, &t);
	if (err < 0)
		return err;

	if (FUNC4(i)) {
		if (nump)
			*nump = best_num;
		if (denp)
			*denp = best_den;
	}
	return err;
}