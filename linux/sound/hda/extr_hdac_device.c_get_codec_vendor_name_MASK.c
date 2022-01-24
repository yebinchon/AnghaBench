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
typedef  scalar_t__ u16 ;
struct hdac_device {int vendor_id; int /*<<< orphan*/  vendor_name; } ;
struct hda_vendor_id {scalar_t__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hda_vendor_id* hda_vendor_ids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hdac_device *codec)
{
	const struct hda_vendor_id *c;
	u16 vendor_id = codec->vendor_id >> 16;

	for (c = hda_vendor_ids; c->id; c++) {
		if (c->id == vendor_id) {
			codec->vendor_name = FUNC1(c->name, GFP_KERNEL);
			return codec->vendor_name ? 0 : -ENOMEM;
		}
	}

	codec->vendor_name = FUNC0(GFP_KERNEL, "Generic %04x", vendor_id);
	return codec->vendor_name ? 0 : -ENOMEM;
}