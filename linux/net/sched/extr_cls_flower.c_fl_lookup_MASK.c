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
struct fl_flow_mask {int flags; } ;
struct fl_flow_key {int dummy; } ;
struct cls_fl_filter {int dummy; } ;

/* Variables and functions */
 int TCA_FLOWER_MASK_FLAGS_RANGE ; 
 struct cls_fl_filter* FUNC0 (struct fl_flow_mask*,struct fl_flow_key*) ; 
 struct cls_fl_filter* FUNC1 (struct fl_flow_mask*,struct fl_flow_key*,struct fl_flow_key*) ; 

__attribute__((used)) static struct cls_fl_filter *FUNC2(struct fl_flow_mask *mask,
				       struct fl_flow_key *mkey,
				       struct fl_flow_key *key)
{
	if ((mask->flags & TCA_FLOWER_MASK_FLAGS_RANGE))
		return FUNC1(mask, mkey, key);

	return FUNC0(mask, mkey);
}