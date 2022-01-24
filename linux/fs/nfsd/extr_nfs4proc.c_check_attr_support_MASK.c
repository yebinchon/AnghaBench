#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_export {int ex_flags; } ;
struct TYPE_2__ {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  minorversion; TYPE_1__ current_fh; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FATTR4_WORD0_ACL ; 
 int FATTR4_WORD1_MODE ; 
 int FATTR4_WORD2_MODE_UMASK ; 
 int FATTR4_WORD2_SECURITY_LABEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NFSEXP_SECURITY_LABEL ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  nfserr_attrnotsupp ; 
 int /*<<< orphan*/  nfserr_inval ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		   u32 *bmval, u32 *writable)
{
	struct dentry *dentry = cstate->current_fh.fh_dentry;
	struct svc_export *exp = cstate->current_fh.fh_export;

	if (!FUNC3(cstate->minorversion, bmval))
		return nfserr_attrnotsupp;
	if ((bmval[0] & FATTR4_WORD0_ACL) && !FUNC0(FUNC2(dentry)))
		return nfserr_attrnotsupp;
	if ((bmval[2] & FATTR4_WORD2_SECURITY_LABEL) &&
			!(exp->ex_flags & NFSEXP_SECURITY_LABEL))
		return nfserr_attrnotsupp;
	if (writable && !FUNC1(bmval, writable))
		return nfserr_inval;
	if (writable && (bmval[2] & FATTR4_WORD2_MODE_UMASK) &&
			(bmval[1] & FATTR4_WORD1_MODE))
		return nfserr_inval;
	return nfs_ok;
}