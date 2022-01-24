#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_info_entry {int dummy; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  machine; int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  nodename; int /*<<< orphan*/  sysname; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_AUDIO ; 
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_MIDI ; 
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_MIXERS ; 
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_SYNTH ; 
 int /*<<< orphan*/  SNDRV_OSS_INFO_DEV_TIMERS ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_info_entry *entry,
				  struct snd_info_buffer *buffer)
{
	FUNC2(buffer, "Sound Driver:3.8.1a-980706 (ALSA emulation code)\n");
	FUNC2(buffer, "Kernel: %s %s %s %s %s\n",
		    FUNC0()->sysname,
		    FUNC0()->nodename,
		    FUNC0()->release,
		    FUNC0()->version,
		    FUNC0()->machine);
	FUNC2(buffer, "Config options: 0\n");
	FUNC2(buffer, "\nInstalled drivers: \n");
	FUNC2(buffer, "Type 10: ALSA emulation\n");
	FUNC2(buffer, "\nCard config: \n");
	FUNC1(buffer);
	FUNC3(buffer, "Audio devices", SNDRV_OSS_INFO_DEV_AUDIO);
	FUNC3(buffer, "Synth devices", SNDRV_OSS_INFO_DEV_SYNTH);
	FUNC3(buffer, "Midi devices", SNDRV_OSS_INFO_DEV_MIDI);
	FUNC3(buffer, "Timers", SNDRV_OSS_INFO_DEV_TIMERS);
	FUNC3(buffer, "Mixers", SNDRV_OSS_INFO_DEV_MIXERS);
}