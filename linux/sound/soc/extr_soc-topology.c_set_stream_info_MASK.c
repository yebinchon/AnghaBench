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
struct snd_soc_tplg_stream_caps {int /*<<< orphan*/  sig_bits; int /*<<< orphan*/  formats; int /*<<< orphan*/  rate_max; int /*<<< orphan*/  rate_min; int /*<<< orphan*/  rates; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  name; } ;
struct snd_soc_pcm_stream {void* sig_bits; int /*<<< orphan*/  formats; void* rate_max; void* rate_min; void* rates; void* channels_max; void* channels_min; int /*<<< orphan*/  stream_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_pcm_stream *stream,
	struct snd_soc_tplg_stream_caps *caps)
{
	stream->stream_name = FUNC0(caps->name, GFP_KERNEL);
	stream->channels_min = FUNC1(caps->channels_min);
	stream->channels_max = FUNC1(caps->channels_max);
	stream->rates = FUNC1(caps->rates);
	stream->rate_min = FUNC1(caps->rate_min);
	stream->rate_max = FUNC1(caps->rate_max);
	stream->formats = FUNC2(caps->formats);
	stream->sig_bits = FUNC1(caps->sig_bits);
}