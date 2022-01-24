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
struct xen_snd_front_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xen_snd_front_info*,int*) ; 
 int FUNC1 (struct xen_snd_front_info*,int) ; 
 int FUNC2 (struct xen_snd_front_info*) ; 

__attribute__((used)) static int FUNC3(struct xen_snd_front_info *front_info)
{
	int num_streams;
	int ret;

	ret = FUNC0(front_info, &num_streams);
	if (ret < 0)
		return ret;

	/* create event channels for all streams and publish */
	ret = FUNC1(front_info, num_streams);
	if (ret < 0)
		return ret;

	return FUNC2(front_info);
}