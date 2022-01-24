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
typedef  int /*<<< orphan*/  u32 ;
struct hdac_ext_stream {int /*<<< orphan*/  dpibr_addr; } ;
struct hdac_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  drsmcap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct hdac_bus *bus,
				 struct hdac_ext_stream *stream, u32 value)
{

	if (!bus->drsmcap) {
		FUNC0(bus->dev, "Address of DRSM capability is NULL\n");
		return -EINVAL;
	}

	FUNC1(value, stream->dpibr_addr);

	return 0;
}