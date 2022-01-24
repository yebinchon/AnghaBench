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
struct nfsd4_secinfo {struct svc_export* si_exp; int /*<<< orphan*/  si_namelen; int /*<<< orphan*/  si_name; } ;
union nfsd4_op_u {struct nfsd4_secinfo secinfo; } ;
struct svc_rqst {int dummy; } ;
struct svc_export {int dummy; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; scalar_t__ minorversion; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_EXEC ; 
 int /*<<< orphan*/  S_IFDIR ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct svc_export**,struct dentry**) ; 
 scalar_t__ nfserr_noent ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	      union nfsd4_op_u *u)
{
	struct nfsd4_secinfo *secinfo = &u->secinfo;
	struct svc_export *exp;
	struct dentry *dentry;
	__be32 err;

	err = FUNC5(rqstp, &cstate->current_fh, S_IFDIR, NFSD_MAY_EXEC);
	if (err)
		return err;
	err = FUNC6(rqstp, &cstate->current_fh,
				    secinfo->si_name, secinfo->si_namelen,
				    &exp, &dentry);
	if (err)
		return err;
	FUNC4(&cstate->current_fh);
	if (FUNC0(dentry)) {
		FUNC2(exp);
		err = nfserr_noent;
	} else
		secinfo->si_exp = exp;
	FUNC1(dentry);
	if (cstate->minorversion)
		/* See rfc 5661 section 2.6.3.1.1.8 */
		FUNC3(&cstate->current_fh);
	return err;
}