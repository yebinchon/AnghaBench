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
struct nf_ct_sip_master {unsigned int invite_cseq; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,int) ; 
 struct nf_conn* FUNC1 (struct sk_buff*,int*) ; 
 struct nf_ct_sip_master* FUNC2 (struct nf_conn*) ; 
 unsigned int FUNC3 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, unsigned int protoff,
				  unsigned int dataoff,
				  const char **dptr, unsigned int *datalen,
				  unsigned int cseq)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC1(skb, &ctinfo);
	struct nf_ct_sip_master *ct_sip_info = FUNC2(ct);
	unsigned int ret;

	FUNC0(ct, true);
	ret = FUNC3(skb, protoff, dataoff, dptr, datalen, cseq);
	if (ret == NF_ACCEPT)
		ct_sip_info->invite_cseq = cseq;
	return ret;
}