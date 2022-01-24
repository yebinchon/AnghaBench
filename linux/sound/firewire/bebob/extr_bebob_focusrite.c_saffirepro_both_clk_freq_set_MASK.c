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
typedef  size_t u32 ;
struct snd_bebob {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SAFFIREPRO_RATE_NOREBOOT ; 
 unsigned int* rates ; 
 int FUNC1 (struct snd_bebob*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC2(struct snd_bebob *bebob, unsigned int rate)
{
	u32 id;

	for (id = 0; id < FUNC0(rates); id++) {
		if (rates[id] == rate)
			break;
	}
	if (id == FUNC0(rates))
		return -EINVAL;

	return FUNC1(bebob, SAFFIREPRO_RATE_NOREBOOT, id);
}