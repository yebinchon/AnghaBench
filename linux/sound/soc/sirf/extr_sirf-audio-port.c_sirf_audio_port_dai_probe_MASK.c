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
struct sirf_audio_port {int /*<<< orphan*/  capture_dma_data; int /*<<< orphan*/  playback_dma_data; } ;

/* Variables and functions */
 struct sirf_audio_port* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct sirf_audio_port *port = FUNC0(dai);

	FUNC1(dai, &port->playback_dma_data,
			&port->capture_dma_data);
	return 0;
}