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
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hdac_device*,unsigned int,int,unsigned int*) ; 
 unsigned int FUNC1 (struct hdac_device*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct hdac_device *hdac, hda_nid_t nid,
			int flags, unsigned int verb, unsigned int parm)
{
	unsigned int cmd = FUNC1(hdac, nid, verb, parm);
	unsigned int res;

	if (FUNC0(hdac, cmd, flags, &res))
		return -1;

	return res;
}