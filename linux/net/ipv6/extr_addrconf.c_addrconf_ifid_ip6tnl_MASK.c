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
typedef  int u8 ;
struct net_device {scalar_t__ perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(u8 *eui, struct net_device *dev)
{
	FUNC0(eui, dev->perm_addr, 3);
	FUNC0(eui + 5, dev->perm_addr + 3, 3);
	eui[3] = 0xFF;
	eui[4] = 0xFE;
	eui[0] ^= 2;
	return 0;
}