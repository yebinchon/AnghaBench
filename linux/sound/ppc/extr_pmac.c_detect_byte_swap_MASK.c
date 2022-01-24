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
struct snd_pmac {scalar_t__ can_duplex; scalar_t__ can_byte_swap; TYPE_1__* node; } ;
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {struct device_node* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 

__attribute__((used)) static void FUNC3(struct snd_pmac *chip)
{
	struct device_node *mio;

	/* if seems that Keylargo can't byte-swap  */
	for (mio = chip->node->parent; mio; mio = mio->parent) {
		if (FUNC2(mio, "mac-io")) {
			if (FUNC0(mio, "Keylargo"))
				chip->can_byte_swap = 0;
			break;
		}
	}

	/* it seems the Pismo & iBook can't byte-swap in hardware. */
	if (FUNC1("PowerBook3,1") ||
	    FUNC1("PowerBook2,1"))
		chip->can_byte_swap = 0 ;

	if (FUNC1("PowerBook2,1"))
		chip->can_duplex = 0;
}