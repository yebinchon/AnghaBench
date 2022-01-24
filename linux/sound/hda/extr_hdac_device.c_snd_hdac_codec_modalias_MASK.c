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
struct hdac_device {int vendor_id; int revision_id; int type; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,int,int,int) ; 

int FUNC1(struct hdac_device *codec, char *buf, size_t size)
{
	return FUNC0(buf, size, "hdaudio:v%08Xr%08Xa%02X\n",
			codec->vendor_id, codec->revision_id, codec->type);
}