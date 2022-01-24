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
struct nf_ct_seqadj {int dummy; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int status; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_SEQ_ADJ_ORIG ; 
 int /*<<< orphan*/  CTA_SEQ_ADJ_REPLY ; 
 int IPS_SEQ_ADJUST ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int FUNC0 (struct sk_buff*,struct nf_ct_seqadj*,int /*<<< orphan*/ ) ; 
 struct nf_conn_seqadj* FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nf_conn *ct)
{
	struct nf_conn_seqadj *seqadj = FUNC1(ct);
	struct nf_ct_seqadj *seq;

	if (!(ct->status & IPS_SEQ_ADJUST) || !seqadj)
		return 0;

	FUNC2(&ct->lock);
	seq = &seqadj->seq[IP_CT_DIR_ORIGINAL];
	if (FUNC0(skb, seq, CTA_SEQ_ADJ_ORIG) == -1)
		goto err;

	seq = &seqadj->seq[IP_CT_DIR_REPLY];
	if (FUNC0(skb, seq, CTA_SEQ_ADJ_REPLY) == -1)
		goto err;

	FUNC3(&ct->lock);
	return 0;
err:
	FUNC3(&ct->lock);
	return -1;
}