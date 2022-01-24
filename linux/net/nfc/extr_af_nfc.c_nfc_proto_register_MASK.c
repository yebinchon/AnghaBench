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
struct nfc_protocol {size_t id; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 size_t NFC_SOCKPROTO_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfc_protocol const** proto_tab ; 
 int /*<<< orphan*/  proto_tab_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(const struct nfc_protocol *nfc_proto)
{
	int rc;

	if (nfc_proto->id < 0 || nfc_proto->id >= NFC_SOCKPROTO_MAX)
		return -EINVAL;

	rc = FUNC0(nfc_proto->proto, 0);
	if (rc)
		return rc;

	FUNC1(&proto_tab_lock);
	if (proto_tab[nfc_proto->id])
		rc = -EBUSY;
	else
		proto_tab[nfc_proto->id] = nfc_proto;
	FUNC2(&proto_tab_lock);

	return rc;
}