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
struct cfpkt {int dummy; } ;
typedef  enum caif_direction { ____Placeholder_caif_direction } caif_direction ;
struct TYPE_2__ {int erronous; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct cfpkt*) ; 
 struct cfpkt* FUNC1 (void*) ; 

struct cfpkt *FUNC2(enum caif_direction dir, void *nativepkt)
{
	struct cfpkt *pkt = FUNC1(nativepkt);
	FUNC0(pkt)->erronous = false;
	return pkt;
}