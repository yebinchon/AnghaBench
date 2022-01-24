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
struct audio_port_data {scalar_t__ dsp_buf; } ;
struct audio_client {int /*<<< orphan*/  lock; struct audio_port_data* port; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct audio_client *ac)
{
	struct audio_port_data *port = NULL;
	unsigned long flags;

	FUNC0(&ac->lock, flags);
	port = &ac->port[SNDRV_PCM_STREAM_PLAYBACK];
	port->dsp_buf = 0;
	port = &ac->port[SNDRV_PCM_STREAM_CAPTURE];
	port->dsp_buf = 0;
	FUNC1(&ac->lock, flags);
}