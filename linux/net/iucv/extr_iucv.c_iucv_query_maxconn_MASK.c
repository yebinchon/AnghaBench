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
typedef  union iucv_param {int dummy; } iucv_param ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int FUNC0 (void*,unsigned long*) ; 
 unsigned long iucv_max_pathid ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long max_pathid;
	void *param;
	int ccode;

	param = FUNC2(sizeof(union iucv_param), GFP_KERNEL | GFP_DMA);
	if (!param)
		return -ENOMEM;
	ccode = FUNC0(param, &max_pathid);
	if (ccode == 0)
		iucv_max_pathid = max_pathid;
	FUNC1(param);
	return ccode ? -EPERM : 0;
}