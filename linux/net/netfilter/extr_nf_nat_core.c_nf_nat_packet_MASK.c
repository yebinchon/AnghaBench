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
struct sk_buff {int dummy; } ;
struct nf_conn {unsigned long status; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned long IPS_DST_NAT ; 
 unsigned long IPS_NAT_MASK ; 
 unsigned long IPS_SRC_NAT ; 
 int IP_CT_DIR_REPLY ; 
 unsigned int NF_ACCEPT ; 
 int NF_NAT_MANIP_SRC ; 
 unsigned int FUNC2 (struct sk_buff*,struct nf_conn*,int,int) ; 

unsigned int FUNC3(struct nf_conn *ct,
			   enum ip_conntrack_info ctinfo,
			   unsigned int hooknum,
			   struct sk_buff *skb)
{
	enum nf_nat_manip_type mtype = FUNC1(hooknum);
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	unsigned int verdict = NF_ACCEPT;
	unsigned long statusbit;

	if (mtype == NF_NAT_MANIP_SRC)
		statusbit = IPS_SRC_NAT;
	else
		statusbit = IPS_DST_NAT;

	/* Invert if this is reply dir. */
	if (dir == IP_CT_DIR_REPLY)
		statusbit ^= IPS_NAT_MASK;

	/* Non-atomic: these bits don't change. */
	if (ct->status & statusbit)
		verdict = FUNC2(skb, ct, mtype, dir);

	return verdict;
}