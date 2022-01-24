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
struct hdac_device {size_t addr; int /*<<< orphan*/  list; } ;
struct hdac_bus {int /*<<< orphan*/  num_codecs; int /*<<< orphan*/  codec_powered; struct hdac_device** caddr_tbl; int /*<<< orphan*/  codec_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 

int FUNC3(struct hdac_bus *bus, struct hdac_device *codec)
{
	if (bus->caddr_tbl[codec->addr]) {
		FUNC0(bus->dev, "address 0x%x is already occupied\n",
			codec->addr);
		return -EBUSY;
	}

	FUNC1(&codec->list, &bus->codec_list);
	bus->caddr_tbl[codec->addr] = codec;
	FUNC2(codec->addr, &bus->codec_powered);
	bus->num_codecs++;
	return 0;
}