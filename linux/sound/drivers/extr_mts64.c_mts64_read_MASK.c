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
typedef  int u16 ;
struct parport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*) ; 
 int FUNC3 (struct parport*) ; 
 int FUNC4 (struct parport*) ; 

__attribute__((used)) static u16 FUNC5(struct parport *p)
{
	u8 data, status;

	FUNC0(p);
	FUNC2(p);
	status = FUNC4(p);
	data = FUNC3(p);
	FUNC1(p);

	return (status << 8) | data;
}