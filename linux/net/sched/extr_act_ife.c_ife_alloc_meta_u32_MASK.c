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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_meta_info {int /*<<< orphan*/  metaval; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ) ; 

int FUNC1(struct tcf_meta_info *mi, void *metaval, gfp_t gfp)
{
	mi->metaval = FUNC0(metaval, sizeof(u32), gfp);
	if (!mi->metaval)
		return -ENOMEM;

	return 0;
}