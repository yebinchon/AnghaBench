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
struct nm256_stream {scalar_t__ substream; scalar_t__ running; } ;
struct nm256 {int /*<<< orphan*/  reg_lock; struct nm256_stream* streams; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct nm256*,struct nm256_stream*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nm256 *chip)
{
	struct nm256_stream *s;

	s = &chip->streams[SNDRV_PCM_STREAM_PLAYBACK];
	if (s->running && s->substream) {
		FUNC3(&chip->reg_lock);
		FUNC1(s->substream);
		FUNC2(&chip->reg_lock);
		FUNC0(chip, s);
	}
}