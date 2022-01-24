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
struct sun4i_codec {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_CODEC_DAC_FIFOC ; 
 int /*<<< orphan*/  SUN4I_CODEC_DAC_FIFOC_DAC_DRQ_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sun4i_codec *scodec)
{
	/* Disable DAC DRQ */
	FUNC1(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
			   FUNC0(SUN4I_CODEC_DAC_FIFOC_DAC_DRQ_EN),
			   0);
}