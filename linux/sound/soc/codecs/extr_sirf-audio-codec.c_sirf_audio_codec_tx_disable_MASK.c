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
struct sirf_audio_codec {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_PORT_IC_CODEC_TX_CTRL ; 
 int /*<<< orphan*/  AUDIO_PORT_IC_TXFIFO_OP ; 
 int /*<<< orphan*/  IC_TX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sirf_audio_codec *sirf_audio_codec)
{
	FUNC1(sirf_audio_codec->regmap, AUDIO_PORT_IC_TXFIFO_OP, 0);
	FUNC0(sirf_audio_codec->regmap,
		AUDIO_PORT_IC_CODEC_TX_CTRL, IC_TX_ENABLE, ~IC_TX_ENABLE);
}