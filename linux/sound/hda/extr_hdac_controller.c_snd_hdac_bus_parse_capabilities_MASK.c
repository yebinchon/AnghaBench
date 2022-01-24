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
struct hdac_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  remap_addr; int /*<<< orphan*/  drsmcap; int /*<<< orphan*/  spbcap; int /*<<< orphan*/  ppcap; int /*<<< orphan*/  gtscap; int /*<<< orphan*/  mlcap; } ;

/* Variables and functions */
 unsigned int AZX_CAP_HDR_ID_MASK ; 
 unsigned int AZX_CAP_HDR_ID_OFF ; 
 unsigned int AZX_CAP_HDR_NXT_PTR_MASK ; 
 unsigned int AZX_CAP_HDR_VER_MASK ; 
 unsigned int AZX_CAP_HDR_VER_OFF ; 
#define  AZX_DRSM_CAP_ID 132 
#define  AZX_GTS_CAP_ID 131 
#define  AZX_ML_CAP_ID 130 
#define  AZX_PP_CAP_ID 129 
#define  AZX_SPB_CAP_ID 128 
 unsigned int HDAC_MAX_CAPS ; 
 int /*<<< orphan*/  LLCH ; 
 unsigned int FUNC0 (struct hdac_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ) ; 

int FUNC4(struct hdac_bus *bus)
{
	unsigned int cur_cap;
	unsigned int offset;
	unsigned int counter = 0;

	offset = FUNC3(bus, LLCH);

	/* Lets walk the linked capabilities list */
	do {
		cur_cap = FUNC0(bus, offset);

		FUNC1(bus->dev, "Capability version: 0x%x\n",
			(cur_cap & AZX_CAP_HDR_VER_MASK) >> AZX_CAP_HDR_VER_OFF);

		FUNC1(bus->dev, "HDA capability ID: 0x%x\n",
			(cur_cap & AZX_CAP_HDR_ID_MASK) >> AZX_CAP_HDR_ID_OFF);

		if (cur_cap == -1) {
			FUNC1(bus->dev, "Invalid capability reg read\n");
			break;
		}

		switch ((cur_cap & AZX_CAP_HDR_ID_MASK) >> AZX_CAP_HDR_ID_OFF) {
		case AZX_ML_CAP_ID:
			FUNC1(bus->dev, "Found ML capability\n");
			bus->mlcap = bus->remap_addr + offset;
			break;

		case AZX_GTS_CAP_ID:
			FUNC1(bus->dev, "Found GTS capability offset=%x\n", offset);
			bus->gtscap = bus->remap_addr + offset;
			break;

		case AZX_PP_CAP_ID:
			/* PP capability found, the Audio DSP is present */
			FUNC1(bus->dev, "Found PP capability offset=%x\n", offset);
			bus->ppcap = bus->remap_addr + offset;
			break;

		case AZX_SPB_CAP_ID:
			/* SPIB capability found, handler function */
			FUNC1(bus->dev, "Found SPB capability\n");
			bus->spbcap = bus->remap_addr + offset;
			break;

		case AZX_DRSM_CAP_ID:
			/* DMA resume  capability found, handler function */
			FUNC1(bus->dev, "Found DRSM capability\n");
			bus->drsmcap = bus->remap_addr + offset;
			break;

		default:
			FUNC2(bus->dev, "Unknown capability %d\n", cur_cap);
			cur_cap = 0;
			break;
		}

		counter++;

		if (counter > HDAC_MAX_CAPS) {
			FUNC2(bus->dev, "We exceeded HDAC capabilities!!!\n");
			break;
		}

		/* read the offset of next capability */
		offset = cur_cap & AZX_CAP_HDR_NXT_PTR_MASK;

	} while (offset);

	return 0;
}