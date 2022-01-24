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
typedef  scalar_t__ u32 ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; int /*<<< orphan*/  rate_val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* int_mix_rate_val ; 
 TYPE_1__* int_prim_rate_val ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, u32 rate)
{
	int i;

	/* set mixing path rate */
	for (i = 0; i < FUNC0(int_mix_rate_val); i++) {
		if (rate == int_mix_rate_val[i].rate) {
			FUNC1(dai,
					int_mix_rate_val[i].rate_val, rate);
			break;
		}
	}

	/* set primary path sample rate */
	for (i = 0; i < FUNC0(int_prim_rate_val); i++) {
		if (rate == int_prim_rate_val[i].rate) {
			FUNC2(dai,
					int_prim_rate_val[i].rate_val, rate);
			break;
		}
	}

	return 0;
}