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
struct hdac_chmap {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdac_chmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_chmap*,int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_chmap*,int /*<<< orphan*/ ,int,int) ; 

void FUNC4(struct hdac_chmap *chmap,
				       hda_nid_t pin_nid, bool non_pcm, int ca,
				       int channels, unsigned char *map,
				       bool chmap_set)
{
	if (!non_pcm && chmap_set) {
		FUNC1(chmap, pin_nid,
						  channels, map, ca);
	} else {
		FUNC3(chmap, pin_nid, non_pcm, ca);
		FUNC2(map, ca);
	}

	FUNC0(chmap, pin_nid);
}