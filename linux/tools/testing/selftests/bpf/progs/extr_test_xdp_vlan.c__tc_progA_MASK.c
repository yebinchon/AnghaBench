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
struct __sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int TC_ACT_OK ; 
 int /*<<< orphan*/  TESTVLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct __sk_buff *ctx)
{
	FUNC1(ctx, FUNC0(ETH_P_8021Q), TESTVLAN);

	return TC_ACT_OK;
}