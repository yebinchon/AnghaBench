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
struct sonicvibes {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct sonicvibes * sonic,
			       unsigned char reg,
			       unsigned char value)
{
	unsigned long flags;

	FUNC2(&sonic->reg_lock, flags);
	FUNC1(reg, FUNC0(sonic, INDEX));
	FUNC4(10);
	FUNC1(value, FUNC0(sonic, DATA));
	FUNC4(10);
	FUNC3(&sonic->reg_lock, flags);
}