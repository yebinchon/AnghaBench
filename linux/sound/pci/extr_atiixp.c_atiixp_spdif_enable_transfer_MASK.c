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
struct atiixp {int dummy; } ;

/* Variables and functions */
 unsigned int ATI_REG_CMD_SPDF_OUT_EN ; 
 int /*<<< orphan*/  CMD ; 
 unsigned int FUNC0 (struct atiixp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct atiixp *chip, int on)
{
	unsigned int data;
	data = FUNC0(chip, CMD);
	if (on)
		data |= ATI_REG_CMD_SPDF_OUT_EN;
	else
		data &= ~ATI_REG_CMD_SPDF_OUT_EN;
	FUNC1(chip, CMD, data);
}