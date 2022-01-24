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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int CTRL0_I2S_BLK_CAP_INV ; 
 int CTRL0_SPDIF_CLK_CAP_INV ; 
 int /*<<< orphan*/  TOHDMITX_CTRL0 ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_component *c)
{
	/* Initialize the static clock parameters */
	return FUNC0(c, TOHDMITX_CTRL0,
		     CTRL0_I2S_BLK_CAP_INV | CTRL0_SPDIF_CLK_CAP_INV);
}