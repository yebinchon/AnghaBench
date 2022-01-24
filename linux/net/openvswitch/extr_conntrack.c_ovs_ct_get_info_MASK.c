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
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 int /*<<< orphan*/  IPS_SEEN_REPLY_BIT ; 
 scalar_t__ IP_CT_DIR_REPLY ; 
 int IP_CT_ESTABLISHED ; 
 int IP_CT_ESTABLISHED_REPLY ; 
 int IP_CT_NEW ; 
 int IP_CT_RELATED ; 
 scalar_t__ FUNC0 (struct nf_conntrack_tuple_hash const*) ; 
 struct nf_conn* FUNC1 (struct nf_conntrack_tuple_hash const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum ip_conntrack_info
FUNC3(const struct nf_conntrack_tuple_hash *h)
{
	const struct nf_conn *ct = FUNC1(h);

	if (FUNC0(h) == IP_CT_DIR_REPLY)
		return IP_CT_ESTABLISHED_REPLY;
	/* Once we've had two way comms, always ESTABLISHED. */
	if (FUNC2(IPS_SEEN_REPLY_BIT, &ct->status))
		return IP_CT_ESTABLISHED;
	if (FUNC2(IPS_EXPECTED_BIT, &ct->status))
		return IP_CT_RELATED;
	return IP_CT_NEW;
}