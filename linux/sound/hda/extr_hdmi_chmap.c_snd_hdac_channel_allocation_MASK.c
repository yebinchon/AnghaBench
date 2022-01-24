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
struct hdac_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hdac_device*,int,int) ; 
 int FUNC1 (int,unsigned char*) ; 

int FUNC2(struct hdac_device *hdac, int spk_alloc,
		int channels, bool chmap_set, bool non_pcm, unsigned char *map)
{
	int ca;

	if (!non_pcm && chmap_set)
		ca = FUNC1(channels, map);
	else
		ca = FUNC0(hdac,
					spk_alloc, channels);

	if (ca < 0)
		ca = 0;

	return ca;
}