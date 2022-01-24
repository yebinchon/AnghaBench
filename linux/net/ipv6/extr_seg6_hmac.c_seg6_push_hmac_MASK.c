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
struct sr6_tlv_hmac {int /*<<< orphan*/  hmac; int /*<<< orphan*/  hmackeyid; } ;
struct seg6_hmac_info {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  SEG6_HMAC_FIELD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sr6_tlv_hmac* FUNC4 (struct ipv6_sr_hdr*) ; 
 int FUNC5 (struct seg6_hmac_info*,struct ipv6_sr_hdr*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 struct seg6_hmac_info* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 

int FUNC7(struct net *net, struct in6_addr *saddr,
		   struct ipv6_sr_hdr *srh)
{
	struct seg6_hmac_info *hinfo;
	struct sr6_tlv_hmac *tlv;
	int err = -ENOENT;

	tlv = FUNC4(srh);
	if (!tlv)
		return -EINVAL;

	FUNC2();

	hinfo = FUNC6(net, FUNC0(tlv->hmackeyid));
	if (!hinfo)
		goto out;

	FUNC1(tlv->hmac, 0, SEG6_HMAC_FIELD_LEN);
	err = FUNC5(hinfo, srh, saddr, tlv->hmac);

out:
	FUNC3();
	return err;
}