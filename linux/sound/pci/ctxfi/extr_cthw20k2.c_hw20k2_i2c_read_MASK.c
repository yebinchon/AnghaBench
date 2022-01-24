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
typedef  void* u32 ;
typedef  unsigned int u16 ;
struct hw20k2 {int addr_size; } ;
struct hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_IF_RDATA ; 
 int /*<<< orphan*/  I2C_IF_STATUS ; 
 int /*<<< orphan*/  I2C_IF_WDATA ; 
 int /*<<< orphan*/  I2C_STATUS_BC ; 
 int /*<<< orphan*/  FUNC0 (struct hw*) ; 
 void* FUNC1 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hw *hw, u16 addr, u32 *datap)
{
	struct hw20k2 *hw20k2 = (struct hw20k2 *)hw;
	unsigned int i2c_status;

	i2c_status = FUNC1(hw, I2C_IF_STATUS);
	FUNC3(&i2c_status, I2C_STATUS_BC,
		  (4 == hw20k2->addr_size) ? 0 : hw20k2->addr_size);
	FUNC2(hw, I2C_IF_STATUS, i2c_status);
	if (!FUNC0(hw))
		return -1;

	FUNC2(hw, I2C_IF_WDATA, addr);
	if (!FUNC0(hw))
		return -1;

	/* Force a read operation */
	FUNC2(hw, I2C_IF_RDATA, 0);
	if (!FUNC0(hw))
		return -1;

	*datap = FUNC1(hw, I2C_IF_RDATA);

	return 0;
}