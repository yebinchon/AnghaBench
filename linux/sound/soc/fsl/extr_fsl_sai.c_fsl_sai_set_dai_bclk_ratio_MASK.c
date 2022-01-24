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
struct fsl_sai {unsigned int bclk_ratio; } ;

/* Variables and functions */
 struct fsl_sai* FUNC0 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai,
				      unsigned int ratio)
{
	struct fsl_sai *sai = FUNC0(dai);

	sai->bclk_ratio = ratio;

	return 0;
}