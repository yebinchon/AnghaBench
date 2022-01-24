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
struct hdac_ext_link {int /*<<< orphan*/  ml_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_REG_ML_LOSIDV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC1(struct hdac_ext_link *link,
				 int stream)
{
	FUNC0(link->ml_addr, AZX_REG_ML_LOSIDV, (1 << stream), 0);
}