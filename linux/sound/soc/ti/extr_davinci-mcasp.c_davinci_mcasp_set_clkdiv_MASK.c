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
struct davinci_mcasp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct davinci_mcasp*,int,int,int) ; 
 struct davinci_mcasp* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int div_id,
				    int div)
{
	struct davinci_mcasp *mcasp = FUNC1(dai);

	return FUNC0(mcasp, div_id, div, 1);
}