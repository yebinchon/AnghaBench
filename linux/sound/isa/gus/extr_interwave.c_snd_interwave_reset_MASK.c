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
struct snd_gus_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_GB_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct snd_gus_card *gus)
{
	FUNC0(gus, SNDRV_GF1_GB_RESET, 0x00);
	FUNC1(160);
	FUNC0(gus, SNDRV_GF1_GB_RESET, 0x01);
	FUNC1(160);
}