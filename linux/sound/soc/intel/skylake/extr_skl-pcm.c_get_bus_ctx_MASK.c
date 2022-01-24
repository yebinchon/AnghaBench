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
struct snd_pcm_substream {int dummy; } ;
struct hdac_stream {struct hdac_bus* bus; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 struct hdac_ext_stream* FUNC0 (struct snd_pcm_substream*) ; 
 struct hdac_stream* FUNC1 (struct hdac_ext_stream*) ; 

__attribute__((used)) static struct hdac_bus *FUNC2(struct snd_pcm_substream *substream)
{
	struct hdac_ext_stream *stream = FUNC0(substream);
	struct hdac_stream *hstream = FUNC1(stream);
	struct hdac_bus *bus = hstream->bus;
	return bus;
}