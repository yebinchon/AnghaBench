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
 int MTS64_CTL_STROBE ; 
 int MTS64_CTL_WRITE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct parport *p, u8 c)
{
	FUNC0(p);

	FUNC2(p, c);

	FUNC1(p, MTS64_CTL_WRITE_DATA);
	FUNC1(p, MTS64_CTL_WRITE_DATA | MTS64_CTL_STROBE);
	FUNC1(p, MTS64_CTL_WRITE_DATA);
}