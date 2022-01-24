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
struct snd_interval {void* max; void* min; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 void* UINT_MAX ; 
 void* FUNC0 (void*,unsigned int) ; 
 void* FUNC1 (void*,unsigned int) ; 
 unsigned int FUNC2 (struct rsnd_dai*,void*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_interval*) ; 
 int FUNC4 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_interval*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct rsnd_dai *rdai,
			    unsigned int *list, int list_num,
			    struct snd_interval *baseline, struct snd_interval *iv)
{
	struct snd_interval p;
	unsigned int rate;
	int i;

	FUNC3(&p);
	p.min = UINT_MAX;
	p.max = 0;

	for (i = 0; i < list_num; i++) {

		if (!FUNC5(iv, list[i]))
			continue;

		rate = FUNC2(rdai,
					  baseline->min, list[i], NULL);
		if (rate > 0) {
			p.min = FUNC1(p.min, list[i]);
			p.max = FUNC0(p.max, list[i]);
		}

		rate = FUNC2(rdai,
					  baseline->max, list[i], NULL);
		if (rate > 0) {
			p.min = FUNC1(p.min, list[i]);
			p.max = FUNC0(p.max, list[i]);
		}
	}

	return FUNC4(iv, &p);
}