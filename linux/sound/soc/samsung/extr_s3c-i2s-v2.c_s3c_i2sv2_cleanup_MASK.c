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
struct snd_soc_dai {int dummy; } ;
struct s3c_i2sv2_info {int /*<<< orphan*/ * iis_pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct snd_soc_dai *dai,
		      struct s3c_i2sv2_info *i2s)
{
	FUNC0(i2s->iis_pclk);
	FUNC1(i2s->iis_pclk);
	i2s->iis_pclk = NULL;
}