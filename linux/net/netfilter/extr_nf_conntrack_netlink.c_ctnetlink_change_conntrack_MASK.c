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
struct nf_conn {int dummy; } ;

/* Variables and functions */
 size_t CTA_HELP ; 
 size_t CTA_LABELS ; 
 size_t CTA_MARK ; 
 size_t CTA_NAT_DST ; 
 size_t CTA_NAT_SRC ; 
 size_t CTA_PROTOINFO ; 
 size_t CTA_SEQ_ADJ_ORIG ; 
 size_t CTA_SEQ_ADJ_REPLY ; 
 size_t CTA_STATUS ; 
 size_t CTA_SYNPROXY ; 
 size_t CTA_TIMEOUT ; 
 size_t CTA_TUPLE_MASTER ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC1 (struct nf_conn*,struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC3 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC4 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC5 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC6 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC7 (struct nf_conn*,struct nlattr const* const*) ; 

__attribute__((used)) static int
FUNC8(struct nf_conn *ct,
			   const struct nlattr * const cda[])
{
	int err;

	/* only allow NAT changes and master assignation for new conntracks */
	if (cda[CTA_NAT_SRC] || cda[CTA_NAT_DST] || cda[CTA_TUPLE_MASTER])
		return -EOPNOTSUPP;

	if (cda[CTA_HELP]) {
		err = FUNC1(ct, cda);
		if (err < 0)
			return err;
	}

	if (cda[CTA_TIMEOUT]) {
		err = FUNC7(ct, cda);
		if (err < 0)
			return err;
	}

	if (cda[CTA_STATUS]) {
		err = FUNC5(ct, cda);
		if (err < 0)
			return err;
	}

	if (cda[CTA_PROTOINFO]) {
		err = FUNC3(ct, cda);
		if (err < 0)
			return err;
	}

#if defined(CONFIG_NF_CONNTRACK_MARK)
	if (cda[CTA_MARK])
		ctnetlink_change_mark(ct, cda);
#endif

	if (cda[CTA_SEQ_ADJ_ORIG] || cda[CTA_SEQ_ADJ_REPLY]) {
		err = FUNC4(ct, cda);
		if (err < 0)
			return err;
	}

	if (cda[CTA_SYNPROXY]) {
		err = FUNC6(ct, cda);
		if (err < 0)
			return err;
	}

	if (cda[CTA_LABELS]) {
		err = FUNC0(ct, cda);
		if (err < 0)
			return err;
	}

	return 0;
}