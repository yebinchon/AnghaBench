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
struct snd_info_buffer {int dummy; } ;
struct loopback_cable {int /*<<< orphan*/ * streams; int /*<<< orphan*/  pause; int /*<<< orphan*/  running; int /*<<< orphan*/  valid; } ;
struct loopback {struct loopback_cable*** cables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_buffer *buffer,
				 struct loopback *loopback,
				 int sub,
				 int num)
{
	struct loopback_cable *cable = loopback->cables[sub][num];

	FUNC1(buffer, "Cable %i substream %i:\n", num, sub);
	if (cable == NULL) {
		FUNC1(buffer, "  inactive\n");
		return;
	}
	FUNC1(buffer, "  valid: %u\n", cable->valid);
	FUNC1(buffer, "  running: %u\n", cable->running);
	FUNC1(buffer, "  pause: %u\n", cable->pause);
	FUNC0(buffer, cable->streams[0], "Playback");
	FUNC0(buffer, cable->streams[1], "Capture");
}