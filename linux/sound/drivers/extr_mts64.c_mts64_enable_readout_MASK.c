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
typedef  int /*<<< orphan*/  u8 ;
struct parport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTS64_CTL_READOUT ; 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct parport *p)
{
	u8 c;

	c = FUNC0(p);
	c |= MTS64_CTL_READOUT;
	FUNC1(p, c); 
}