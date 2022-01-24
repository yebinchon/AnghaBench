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
struct widget_attribute {int dummy; } ;
struct hdac_device {scalar_t__ afg; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_AMP_IN_CAP ; 
 int AC_WCAP_IN_AMP ; 
 int FUNC0 (struct hdac_device*,scalar_t__) ; 
 int FUNC1 (struct hdac_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct hdac_device *codec, hda_nid_t nid,
				struct widget_attribute *attr, char *buf)
{
	if (nid != codec->afg && !(FUNC0(codec, nid) & AC_WCAP_IN_AMP))
		return 0;
	return FUNC2(buf, "0x%08x\n",
		       FUNC1(codec, nid, AC_PAR_AMP_IN_CAP));
}