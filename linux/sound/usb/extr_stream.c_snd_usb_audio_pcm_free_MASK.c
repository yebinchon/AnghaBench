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
struct snd_usb_stream {int /*<<< orphan*/ * pcm; } ;
struct snd_pcm {struct snd_usb_stream* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_usb_stream*) ; 

__attribute__((used)) static void FUNC1(struct snd_pcm *pcm)
{
	struct snd_usb_stream *stream = pcm->private_data;
	if (stream) {
		stream->pcm = NULL;
		FUNC0(stream);
	}
}