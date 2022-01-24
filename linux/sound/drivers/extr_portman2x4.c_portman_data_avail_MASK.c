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
struct portman {int dummy; } ;

/* Variables and functions */
 int INT_EN ; 
 int RXAVAIL ; 
 int RXDATA0 ; 
 int RXDATA1 ; 
 int FUNC0 (struct portman*) ; 
 int /*<<< orphan*/  FUNC1 (struct portman*,int) ; 

__attribute__((used)) static int FUNC2(struct portman *pm, int channel)
{
	int command = INT_EN;
	switch (channel) {
	case 0:
		command |= RXDATA0;
		break;
	case 1:
		command |= RXDATA1;
		break;
	}
	/* Write hardware (assumme STROBE=0) */
	FUNC1(pm, command);
	/* Check multiplexed RxAvail signal */
	if ((FUNC0(pm) & RXAVAIL) == RXAVAIL)
		return 1;	/* Data available */

	/* No Data available */
	return 0;
}