#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hdmi_audio_data {int /*<<< orphan*/  current_stream_lock; TYPE_1__* current_stream; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct hdmi_audio_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	struct hdmi_audio_data *ad = FUNC1(dev);

	FUNC2(&ad->current_stream_lock);
	if (ad->current_stream && ad->current_stream->runtime &&
	    FUNC4(ad->current_stream)) {
		FUNC0(dev, "HDMI display disabled, aborting playback\n");
		FUNC6(ad->current_stream);
		FUNC5(ad->current_stream, SNDRV_PCM_STATE_DISCONNECTED);
		FUNC7(ad->current_stream);
	}
	FUNC3(&ad->current_stream_lock);
}