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
typedef  scalar_t__ u32 ;
struct tcf_meta_info {int /*<<< orphan*/  metaid; scalar_t__ metaval; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int,scalar_t__*) ; 

int FUNC2(u32 metaval, void *skbdata, struct tcf_meta_info *mi)
{
	u32 edata = metaval;

	if (mi->metaval)
		edata = *(u32 *)mi->metaval;
	else if (metaval)
		edata = metaval;

	if (!edata) /* will not encode */
		return 0;

	edata = FUNC0(edata);
	return FUNC1(skbdata, mi->metaid, 4, &edata);
}