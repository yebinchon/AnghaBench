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
struct hdac_stream {int dummy; } ;
struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 struct hdac_stream* FUNC1 (int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 struct azx_dev* FUNC2 (struct hdac_stream*) ; 

__attribute__((used)) static inline struct azx_dev *
FUNC3(struct azx *chip, struct snd_pcm_substream *substream)
{
	struct hdac_stream *s;

	s = FUNC1(FUNC0(chip), substream);
	if (!s)
		return NULL;
	return FUNC2(s);
}