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
typedef  int u32 ;
struct hdac_stream {int /*<<< orphan*/  index; } ;
struct hdac_ext_stream {int decoupled; struct hdac_stream hstream; } ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; scalar_t__ ppcap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AZX_REG_PP_PPCTL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct hdac_bus *bus,
				struct hdac_ext_stream *stream, bool decouple)
{
	struct hdac_stream *hstream = &stream->hstream;
	u32 val;
	int mask = FUNC0(hstream->index);

	FUNC3(&bus->reg_lock);
	val = FUNC1(bus->ppcap + AZX_REG_PP_PPCTL) & mask;

	if (decouple && !val)
		FUNC2(bus->ppcap, AZX_REG_PP_PPCTL, mask, mask);
	else if (!decouple && val)
		FUNC2(bus->ppcap, AZX_REG_PP_PPCTL, mask, 0);

	stream->decoupled = decouple;
	FUNC4(&bus->reg_lock);
}