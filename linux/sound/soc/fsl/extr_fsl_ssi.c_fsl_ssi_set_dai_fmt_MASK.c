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
struct fsl_ssi {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fsl_ssi*,unsigned int) ; 
 scalar_t__ FUNC1 (struct fsl_ssi*) ; 
 struct fsl_ssi* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct fsl_ssi *ssi = FUNC2(dai);

	/* AC97 configured DAIFMT earlier in the probe() */
	if (FUNC1(ssi))
		return 0;

	return FUNC0(ssi, fmt);
}