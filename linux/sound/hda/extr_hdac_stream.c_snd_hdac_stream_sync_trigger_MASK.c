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
struct hdac_stream {struct hdac_bus* bus; } ;
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 unsigned int AZX_REG_SSYNC ; 
 unsigned int FUNC0 (struct hdac_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*,unsigned int,unsigned int) ; 

void FUNC2(struct hdac_stream *azx_dev, bool set,
				  unsigned int streams, unsigned int reg)
{
	struct hdac_bus *bus = azx_dev->bus;
	unsigned int val;

	if (!reg)
		reg = AZX_REG_SSYNC;
	val = FUNC0(bus, reg);
	if (set)
		val |= streams;
	else
		val &= ~streams;
	FUNC1(bus, reg, val);
}