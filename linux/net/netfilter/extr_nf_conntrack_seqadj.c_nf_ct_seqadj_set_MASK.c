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
struct nf_ct_seqadj {scalar_t__ offset_before; scalar_t__ offset_after; int /*<<< orphan*/  correction_pos; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;
typedef  scalar_t__ s32 ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IPS_SEQ_ADJUST_BIT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn_seqadj* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct nf_conn *ct, enum ip_conntrack_info ctinfo,
		     __be32 seq, s32 off)
{
	struct nf_conn_seqadj *seqadj = FUNC3(ct);
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	struct nf_ct_seqadj *this_way;

	if (off == 0)
		return 0;

	if (FUNC8(!seqadj)) {
		FUNC1(1, "Missing nfct_seqadj_ext_add() setup call\n");
		return 0;
	}

	FUNC5(IPS_SEQ_ADJUST_BIT, &ct->status);

	FUNC6(&ct->lock);
	this_way = &seqadj->seq[dir];
	if (this_way->offset_before == this_way->offset_after ||
	    FUNC2(this_way->correction_pos, FUNC4(seq))) {
		this_way->correction_pos = FUNC4(seq);
		this_way->offset_before	 = this_way->offset_after;
		this_way->offset_after	+= off;
	}
	FUNC7(&ct->lock);
	return 0;
}