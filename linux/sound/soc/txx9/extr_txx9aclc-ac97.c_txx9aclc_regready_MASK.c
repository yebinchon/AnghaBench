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
struct txx9aclc_plat_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ACINTSTS ; 
 int ACINT_REGACCRDY ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct txx9aclc_plat_drvdata *drvdata)
{
	return FUNC0(drvdata->base + ACINTSTS) & ACINT_REGACCRDY;
}