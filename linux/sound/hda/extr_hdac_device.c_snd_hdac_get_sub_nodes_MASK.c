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
typedef  unsigned int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_NODE_COUNT ; 
 unsigned int FUNC0 (struct hdac_device*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC1(struct hdac_device *codec, hda_nid_t nid,
			   hda_nid_t *start_id)
{
	unsigned int parm;

	parm = FUNC0(codec, nid, AC_PAR_NODE_COUNT);
	if (parm == -1) {
		*start_id = 0;
		return 0;
	}
	*start_id = (parm >> 16) & 0x7fff;
	return (int)(parm & 0x7fff);
}