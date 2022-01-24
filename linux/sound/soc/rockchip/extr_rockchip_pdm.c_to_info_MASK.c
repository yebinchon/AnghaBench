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
struct rk_pdm_dev {int dummy; } ;

/* Variables and functions */
 struct rk_pdm_dev* FUNC0 (struct snd_soc_dai*) ; 

__attribute__((used)) static inline struct rk_pdm_dev *FUNC1(struct snd_soc_dai *dai)
{
	return FUNC0(dai);
}