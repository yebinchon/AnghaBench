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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int TCA_CT_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct nlattr*,int) ; 

__attribute__((used)) static void FUNC2(struct nlattr **tb,
			       void *val, int val_type,
			       void *mask, int mask_type,
			       int len)
{
	if (!tb[val_type])
		return;
	FUNC1(val, tb[val_type], len);

	if (!mask)
		return;

	if (mask_type == TCA_CT_UNSPEC || !tb[mask_type])
		FUNC0(mask, 0xff, len);
	else
		FUNC1(mask, tb[mask_type], len);
}