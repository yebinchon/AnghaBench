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
struct nlattr {int dummy; } ;
struct nf_conn_seqadj {int /*<<< orphan*/ * seq; } ;
struct nf_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 size_t CTA_SEQ_ADJ_ORIG ; 
 size_t CTA_SEQ_ADJ_REPLY ; 
 int /*<<< orphan*/  IPS_SEQ_ADJUST_BIT ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nlattr const* const) ; 
 struct nf_conn_seqadj* FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nf_conn *ct,
			 const struct nlattr * const cda[])
{
	struct nf_conn_seqadj *seqadj = FUNC1(ct);
	int ret = 0;

	if (!seqadj)
		return 0;

	FUNC3(&ct->lock);
	if (cda[CTA_SEQ_ADJ_ORIG]) {
		ret = FUNC0(&seqadj->seq[IP_CT_DIR_ORIGINAL],
				     cda[CTA_SEQ_ADJ_ORIG]);
		if (ret < 0)
			goto err;

		FUNC2(IPS_SEQ_ADJUST_BIT, &ct->status);
	}

	if (cda[CTA_SEQ_ADJ_REPLY]) {
		ret = FUNC0(&seqadj->seq[IP_CT_DIR_REPLY],
				     cda[CTA_SEQ_ADJ_REPLY]);
		if (ret < 0)
			goto err;

		FUNC2(IPS_SEQ_ADJUST_BIT, &ct->status);
	}

	FUNC4(&ct->lock);
	return 0;
err:
	FUNC4(&ct->lock);
	return ret;
}