#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int index; } ;
struct azx_dev {TYPE_1__ core; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 scalar_t__ AZX_REG_VS_SDXDPIB_XBASE ; 
 int AZX_REG_VS_SDXDPIB_XINTERVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*) ; 

__attribute__((used)) static unsigned int FUNC2(struct azx *chip,
					 struct azx_dev *azx_dev)
{
	return FUNC0(FUNC1(chip),
				    AZX_REG_VS_SDXDPIB_XBASE +
				    (AZX_REG_VS_SDXDPIB_XINTERVAL *
				     azx_dev->core.index));
}