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
struct tas {int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static inline int FUNC2(struct tas *tas, u8 reg, u8 len, u8 *data)
{
	if (len == 1)
		return FUNC0(tas->i2c, reg, *data);
	else
		return FUNC1(tas->i2c, reg, len, data);
}