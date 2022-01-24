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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ rssi; int /*<<< orphan*/  ssp_mode; } ;
struct inquiry_entry {scalar_t__ name_state; void* timestamp; TYPE_1__ data; int /*<<< orphan*/  list; int /*<<< orphan*/  all; } ;
struct inquiry_data {scalar_t__ rssi; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  ssp_mode; } ;
struct discovery_state {void* timestamp; int /*<<< orphan*/  unknown; int /*<<< orphan*/  all; } ;
struct hci_dev {struct discovery_state discovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,struct discovery_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MGMT_DEV_FOUND_CONFIRM_NAME ; 
 int /*<<< orphan*/  MGMT_DEV_FOUND_LEGACY_PAIRING ; 
 scalar_t__ NAME_KNOWN ; 
 scalar_t__ NAME_NEEDED ; 
 scalar_t__ NAME_NOT_KNOWN ; 
 scalar_t__ NAME_PENDING ; 
 struct inquiry_entry* FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct inquiry_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 struct inquiry_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct inquiry_data*,int) ; 

u32 FUNC8(struct hci_dev *hdev, struct inquiry_data *data,
			     bool name_known)
{
	struct discovery_state *cache = &hdev->discovery;
	struct inquiry_entry *ie;
	u32 flags = 0;

	FUNC0("cache %p, %pMR", cache, &data->bdaddr);

	FUNC3(hdev, &data->bdaddr, BDADDR_BREDR);

	if (!data->ssp_mode)
		flags |= MGMT_DEV_FOUND_LEGACY_PAIRING;

	ie = FUNC1(hdev, &data->bdaddr);
	if (ie) {
		if (!ie->data.ssp_mode)
			flags |= MGMT_DEV_FOUND_LEGACY_PAIRING;

		if (ie->name_state == NAME_NEEDED &&
		    data->rssi != ie->data.rssi) {
			ie->data.rssi = data->rssi;
			FUNC2(hdev, ie);
		}

		goto update;
	}

	/* Entry not in the cache. Add new one. */
	ie = FUNC4(sizeof(*ie), GFP_KERNEL);
	if (!ie) {
		flags |= MGMT_DEV_FOUND_CONFIRM_NAME;
		goto done;
	}

	FUNC5(&ie->all, &cache->all);

	if (name_known) {
		ie->name_state = NAME_KNOWN;
	} else {
		ie->name_state = NAME_NOT_KNOWN;
		FUNC5(&ie->list, &cache->unknown);
	}

update:
	if (name_known && ie->name_state != NAME_KNOWN &&
	    ie->name_state != NAME_PENDING) {
		ie->name_state = NAME_KNOWN;
		FUNC6(&ie->list);
	}

	FUNC7(&ie->data, data, sizeof(*data));
	ie->timestamp = jiffies;
	cache->timestamp = jiffies;

	if (ie->name_state == NAME_NOT_KNOWN)
		flags |= MGMT_DEV_FOUND_CONFIRM_NAME;

done:
	return flags;
}