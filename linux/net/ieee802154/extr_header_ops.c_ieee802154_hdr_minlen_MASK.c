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
struct TYPE_2__ {int intra_pan; int security_enabled; int /*<<< orphan*/  source_addr_mode; int /*<<< orphan*/  dest_addr_mode; } ;
struct ieee802154_hdr {TYPE_1__ fc; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(const struct ieee802154_hdr *hdr)
{
	int dlen, slen;

	dlen = FUNC0(hdr->fc.dest_addr_mode, false);
	slen = FUNC0(hdr->fc.source_addr_mode,
				       hdr->fc.intra_pan);

	if (slen < 0 || dlen < 0)
		return -EINVAL;

	return 3 + dlen + slen + hdr->fc.security_enabled;
}