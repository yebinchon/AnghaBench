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
struct nf_ct_seqadj {scalar_t__ offset_after; scalar_t__ offset_before; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
typedef  scalar_t__ s32 ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IPS_SEQ_ADJUST_BIT ; 
 struct nf_conn_seqadj* FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct nf_conn *ct, enum ip_conntrack_info ctinfo,
		      s32 off)
{
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	struct nf_conn_seqadj *seqadj;
	struct nf_ct_seqadj *this_way;

	if (off == 0)
		return 0;

	FUNC2(IPS_SEQ_ADJUST_BIT, &ct->status);

	seqadj = FUNC1(ct);
	this_way = &seqadj->seq[dir];
	this_way->offset_before	 = off;
	this_way->offset_after	 = off;
	return 0;
}