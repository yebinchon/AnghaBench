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
 int /*<<< orphan*/  AUDIO_FIFO_RESET ; 
 int /*<<< orphan*/  AUDIO_FIFO_START ; 
 int /*<<< orphan*/  AUDIO_PORT_IC_CODEC_RX_CTRL ; 
 int /*<<< orphan*/  AUDIO_PORT_IC_RXFIFO_INT_MSK ; 
 int /*<<< orphan*/  AUDIO_PORT_IC_RXFIFO_OP ; 
 int /*<<< orphan*/  IC_RX_ENABLE_MONO ; 
 int /*<<< orphan*/  IC_RX_ENABLE_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sirf_audio_codec *sirf_audio_codec,
	int channels)
{
	FUNC0(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP,
		AUDIO_FIFO_RESET, AUDIO_FIFO_RESET);
	FUNC0(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP,
		AUDIO_FIFO_RESET, ~AUDIO_FIFO_RESET);
	FUNC1(sirf_audio_codec->regmap,
		AUDIO_PORT_IC_RXFIFO_INT_MSK, 0);
	FUNC1(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP, 0);
	FUNC0(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP,
		AUDIO_FIFO_START, AUDIO_FIFO_START);
	if (channels == 1)
		FUNC0(sirf_audio_codec->regmap,
			AUDIO_PORT_IC_CODEC_RX_CTRL,
			IC_RX_ENABLE_MONO, IC_RX_ENABLE_MONO);
	else
		FUNC0(sirf_audio_codec->regmap,
			AUDIO_PORT_IC_CODEC_RX_CTRL,
			IC_RX_ENABLE_STEREO, IC_RX_ENABLE_STEREO);
}