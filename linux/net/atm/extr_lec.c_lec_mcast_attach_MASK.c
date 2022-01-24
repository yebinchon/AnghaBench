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
struct atm_vcc {scalar_t__ proto_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_LEC_ITF ; 
 int FUNC0 (int,int) ; 
 scalar_t__* dev_lec ; 
 int FUNC1 (int /*<<< orphan*/ ,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct atm_vcc *vcc, int arg)
{
	if (arg < 0 || arg >= MAX_LEC_ITF)
		return -EINVAL;
	arg = FUNC0(arg, MAX_LEC_ITF);
	if (!dev_lec[arg])
		return -EINVAL;
	vcc->proto_data = dev_lec[arg];
	return FUNC1(FUNC2(dev_lec[arg]), vcc);
}