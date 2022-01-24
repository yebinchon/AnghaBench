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
struct snd_soc_pcm_stream {int formats; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* endianness_format_map ; 

__attribute__((used)) static void FUNC1(struct snd_soc_pcm_stream *stream)
{
	int i;

	for (i = 0; i < FUNC0(endianness_format_map); i++)
		if (stream->formats & endianness_format_map[i])
			stream->formats |= endianness_format_map[i];
}