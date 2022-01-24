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
struct snd_info_buffer {int dummy; } ;
struct hdac_device {scalar_t__ mfg; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  subsystem_id; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  mfg_unsol; int /*<<< orphan*/  mfg_function_id; int /*<<< orphan*/  afg_unsol; int /*<<< orphan*/  afg_function_id; scalar_t__ afg; int /*<<< orphan*/  addr; scalar_t__ chip_name; scalar_t__ vendor_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct hdac_device *codec,
				  struct snd_info_buffer *buffer)
{
	FUNC0(buffer, "Codec: ");
	if (codec->vendor_name && codec->chip_name)
		FUNC0(buffer, "%s %s\n",
			    codec->vendor_name, codec->chip_name);
	else
		FUNC0(buffer, "Not Set\n");
	FUNC0(buffer, "Address: %d\n", codec->addr);
	if (codec->afg)
		FUNC0(buffer, "AFG Function Id: 0x%x (unsol %u)\n",
			codec->afg_function_id, codec->afg_unsol);
	if (codec->mfg)
		FUNC0(buffer, "MFG Function Id: 0x%x (unsol %u)\n",
			codec->mfg_function_id, codec->mfg_unsol);
	FUNC0(buffer, "Vendor Id: 0x%08x\n", codec->vendor_id);
	FUNC0(buffer, "Subsystem Id: 0x%08x\n", codec->subsystem_id);
	FUNC0(buffer, "Revision Id: 0x%x\n", codec->revision_id);

	if (codec->mfg)
		FUNC0(buffer, "Modem Function Group: 0x%x\n", codec->mfg);
	else
		FUNC0(buffer, "No Modem Function Group found\n");
}