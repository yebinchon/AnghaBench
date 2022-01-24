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
struct mld_msg {int /*<<< orphan*/  mld_maxdelay; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLDV1_MRD_MAX_COMPAT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 scalar_t__ FUNC5 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inet6_dev *idev, struct mld_msg *mld,
			  unsigned long *max_delay, bool v1_query)
{
	unsigned long mldv1_md;

	/* Ignore v1 queries */
	if (FUNC5(idev))
		return -EINVAL;

	mldv1_md = FUNC8(mld->mld_maxdelay);

	/* When in MLDv1 fallback and a MLDv2 router start-up being
	 * unaware of current MLDv1 operation, the MRC == MRD mapping
	 * only works when the exponential algorithm is not being
	 * used (as MLDv1 is unaware of such things).
	 *
	 * According to the RFC author, the MLDv2 implementations
	 * he's aware of all use a MRC < 32768 on start up queries.
	 *
	 * Thus, should we *ever* encounter something else larger
	 * than that, just assume the maximum possible within our
	 * reach.
	 */
	if (!v1_query)
		mldv1_md = FUNC1(mldv1_md, MLDV1_MRD_MAX_COMPAT);

	*max_delay = FUNC0(FUNC7(mldv1_md), 1UL);

	/* MLDv1 router present: we need to go into v1 mode *only*
	 * when an MLDv1 query is received as per section 9.12. of
	 * RFC3810! And we know from RFC2710 section 3.7 that MLDv1
	 * queries MUST be of exactly 24 octets.
	 */
	if (v1_query)
		FUNC6(idev);

	/* cancel MLDv2 report timer */
	FUNC3(idev);
	/* cancel the interface change timer */
	FUNC4(idev);
	/* clear deleted report items */
	FUNC2(idev);

	return 0;
}