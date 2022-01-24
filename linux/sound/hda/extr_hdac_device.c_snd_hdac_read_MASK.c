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
 int FUNC0 (struct hdac_device*,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC1 (struct hdac_device*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

int FUNC2(struct hdac_device *codec, hda_nid_t nid,
		  unsigned int verb, unsigned int parm, unsigned int *res)
{
	unsigned int cmd = FUNC1(codec, nid, verb, parm);

	return FUNC0(codec, cmd, 0, res);
}