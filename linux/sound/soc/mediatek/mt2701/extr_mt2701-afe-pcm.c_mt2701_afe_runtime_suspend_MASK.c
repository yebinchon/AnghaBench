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
struct mtk_base_afe {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mtk_base_afe* FUNC0 (struct device*) ; 
 int FUNC1 (struct mtk_base_afe*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct mtk_base_afe *afe = FUNC0(dev);

	return FUNC1(afe);
}