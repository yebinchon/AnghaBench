#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  supp ;
struct xdr_stream {TYPE_10__* buf; } ;
struct svc_rqst {struct nfsd4_compoundres* rq_resp; } ;
struct TYPE_14__ {int /*<<< orphan*/  fh_size; int /*<<< orphan*/  fh_base; } ;
struct svc_fh {int naces; TYPE_3__ fh_handle; struct nfs4_ace* aces; } ;
struct TYPE_20__ {TYPE_8__* mnt; } ;
struct TYPE_13__ {scalar_t__ migrated; } ;
struct svc_export {int ex_flags; int /*<<< orphan*/  ex_layout_types; TYPE_9__ ex_path; int /*<<< orphan*/  ex_uuid; scalar_t__ ex_fsid; TYPE_2__ ex_fslocs; } ;
struct path {struct dentry* dentry; TYPE_8__* mnt; } ;
struct nfsd_net {int nfsd4_lease; } ;
struct TYPE_12__ {int minorversion; } ;
struct nfsd4_compoundres {TYPE_1__ cstate; } ;
struct nfs4_acl {int naces; TYPE_3__ fh_handle; struct nfs4_ace* aces; } ;
struct nfs4_ace {int type; int flag; int access_mask; } ;
struct kstatfs {int f_namelen; scalar_t__ f_bsize; scalar_t__ f_blocks; scalar_t__ f_bfree; scalar_t__ f_bavail; scalar_t__ f_files; scalar_t__ f_ffree; } ;
struct TYPE_18__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_17__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_16__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct kstat {int mode; int size; int ino; int nlink; int blksize; TYPE_7__ mtime; TYPE_6__ ctime; TYPE_5__ atime; scalar_t__ blocks; int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  dev; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int s64 ;
typedef  scalar_t__ __be32 ;
struct TYPE_19__ {struct dentry* mnt_root; TYPE_4__* mnt_sb; } ;
struct TYPE_15__ {int s_maxbytes; } ;
struct TYPE_11__ {int len; } ;

/* Variables and functions */
 int ACL4_SUPPORT_ALLOW_ACL ; 
 int ACL4_SUPPORT_DENY_ACL ; 
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EX_UUID_LEN ; 
 int FATTR4_WORD0_ACL ; 
 int FATTR4_WORD0_ACLSUPPORT ; 
 int FATTR4_WORD0_CANSETTIME ; 
 int FATTR4_WORD0_CASE_INSENSITIVE ; 
 int FATTR4_WORD0_CASE_PRESERVING ; 
 int FATTR4_WORD0_CHANGE ; 
 int FATTR4_WORD0_CHOWN_RESTRICTED ; 
 int FATTR4_WORD0_FH_EXPIRE_TYPE ; 
 int FATTR4_WORD0_FILEHANDLE ; 
 int FATTR4_WORD0_FILEID ; 
 int FATTR4_WORD0_FILES_AVAIL ; 
 int FATTR4_WORD0_FILES_FREE ; 
 int FATTR4_WORD0_FILES_TOTAL ; 
 int FATTR4_WORD0_FSID ; 
 int FATTR4_WORD0_FS_LOCATIONS ; 
 int FATTR4_WORD0_HOMOGENEOUS ; 
 int FATTR4_WORD0_LEASE_TIME ; 
 int FATTR4_WORD0_LINK_SUPPORT ; 
 int FATTR4_WORD0_MAXFILESIZE ; 
 int FATTR4_WORD0_MAXLINK ; 
 int FATTR4_WORD0_MAXNAME ; 
 int FATTR4_WORD0_MAXREAD ; 
 int FATTR4_WORD0_MAXWRITE ; 
 int FATTR4_WORD0_NAMED_ATTR ; 
 int FATTR4_WORD0_RDATTR_ERROR ; 
 int FATTR4_WORD0_SIZE ; 
 int FATTR4_WORD0_SUPPORTED_ATTRS ; 
 int FATTR4_WORD0_SYMLINK_SUPPORT ; 
 int FATTR4_WORD0_TYPE ; 
 int FATTR4_WORD0_UNIQUE_HANDLES ; 
 int FATTR4_WORD1_FS_LAYOUT_TYPES ; 
 int FATTR4_WORD1_MODE ; 
 int FATTR4_WORD1_MOUNTED_ON_FILEID ; 
 int FATTR4_WORD1_NO_TRUNC ; 
 int FATTR4_WORD1_NUMLINKS ; 
 int FATTR4_WORD1_OWNER ; 
 int FATTR4_WORD1_OWNER_GROUP ; 
 int FATTR4_WORD1_RAWDEV ; 
 int FATTR4_WORD1_SPACE_AVAIL ; 
 int FATTR4_WORD1_SPACE_FREE ; 
 int FATTR4_WORD1_SPACE_TOTAL ; 
 int FATTR4_WORD1_SPACE_USED ; 
 int FATTR4_WORD1_TIME_ACCESS ; 
 int FATTR4_WORD1_TIME_DELTA ; 
 int FATTR4_WORD1_TIME_METADATA ; 
 int FATTR4_WORD1_TIME_MODIFY ; 
 int FATTR4_WORD2_CHANGE_ATTR_TYPE ; 
 int FATTR4_WORD2_LAYOUT_BLKSIZE ; 
 int FATTR4_WORD2_LAYOUT_TYPES ; 
 int FATTR4_WORD2_SECURITY_LABEL ; 
 int FATTR4_WORD2_SUPPATTR_EXCLCREAT ; 
#define  FSIDSOURCE_DEV 130 
#define  FSIDSOURCE_FSID 129 
#define  FSIDSOURCE_UUID 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int NF4BAD ; 
 int NFS4_ACE_MASK_ALL ; 
 int NFS4_CHANGE_TYPE_IS_MONOTONIC_INCR ; 
 int NFS4_CHANGE_TYPE_IS_TIME_METADATA ; 
 int /*<<< orphan*/  NFS4_FHSIZE ; 
 int NFS4_FH_PERSISTENT ; 
 int NFS4_FH_VOL_RENAME ; 
 int NFS4_REFERRAL_FSID_MAJOR ; 
 int NFS4_REFERRAL_FSID_MINOR ; 
 int NFSD_SUPPATTR_EXCLCREAT_WORD0 ; 
 int NFSD_SUPPATTR_EXCLCREAT_WORD1 ; 
 int NFSD_SUPPATTR_EXCLCREAT_WORD2 ; 
 int NFSD_WRITEONLY_ATTRS_WORD1 ; 
 int NFSEXP_NOSUBTREECHECK ; 
 int NFSEXP_SECURITY_LABEL ; 
 int /*<<< orphan*/  STATX_BASIC_STATS ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*) ; 
 int S_IALLUGO ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 scalar_t__* FUNC8 (scalar_t__*,struct kstat*,int /*<<< orphan*/ ,struct svc_export*) ; 
 scalar_t__* FUNC9 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int*,int*,int*,int*) ; 
 scalar_t__ FUNC11 (struct svc_fh*,struct svc_export*,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_fh*) ; 
 int FUNC14 (struct svc_fh*) ; 
 int FUNC15 (struct svc_export*,struct kstat*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct svc_fh*) ; 
 struct svc_fh* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*,int /*<<< orphan*/ ,int) ; 
 struct nfsd_net* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC22 (struct xdr_stream*,struct svc_rqst*,struct nfs4_ace*) ; 
 scalar_t__ FUNC23 (struct xdr_stream*,int,int,int) ; 
 scalar_t__ FUNC24 (struct xdr_stream*,struct svc_rqst*,struct svc_export*) ; 
 scalar_t__ FUNC25 (struct xdr_stream*,struct svc_rqst*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct xdr_stream*,struct svc_rqst*,void*,int) ; 
 scalar_t__ FUNC28 (struct xdr_stream*,struct svc_rqst*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct svc_rqst*,struct dentry*,struct svc_fh**) ; 
 int /*<<< orphan*/  FUNC30 (int,int*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/ * nfsd_suppattrs ; 
 scalar_t__ nfserr_attrnotsupp ; 
 scalar_t__ nfserr_jukebox ; 
 scalar_t__ nfserr_resource ; 
 scalar_t__ nfserr_serverfault ; 
 scalar_t__ FUNC31 (int) ; 
 int FUNC32 (int /*<<< orphan*/ ,void**,int*) ; 
 int /*<<< orphan*/  FUNC33 (void*,int) ; 
 scalar_t__ FUNC34 (struct svc_rqst*) ; 
 int FUNC35 (struct path*,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC36 (struct path*,struct kstatfs*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_10__*,int,scalar_t__*,int) ; 
 scalar_t__* FUNC38 (scalar_t__*,int) ; 
 scalar_t__* FUNC39 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC40 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC41 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC42 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC43(struct xdr_stream *xdr, struct svc_fh *fhp,
		struct svc_export *exp,
		struct dentry *dentry, u32 *bmval,
		struct svc_rqst *rqstp, int ignore_crossmnt)
{
	u32 bmval0 = bmval[0];
	u32 bmval1 = bmval[1];
	u32 bmval2 = bmval[2];
	struct kstat stat;
	struct svc_fh *tempfh = NULL;
	struct kstatfs statfs;
	__be32 *p;
	int starting_len = xdr->buf->len;
	int attrlen_offset;
	__be32 attrlen;
	u32 dummy;
	u64 dummy64;
	u32 rdattr_err = 0;
	__be32 status;
	int err;
	struct nfs4_acl *acl = NULL;
#ifdef CONFIG_NFSD_V4_SECURITY_LABEL
	void *context = NULL;
	int contextlen;
#endif
	bool contextsupport = false;
	struct nfsd4_compoundres *resp = rqstp->rq_resp;
	u32 minorversion = resp->cstate.minorversion;
	struct path path = {
		.mnt	= exp->ex_path.mnt,
		.dentry	= dentry,
	};
	struct nfsd_net *nn = FUNC20(FUNC5(rqstp), nfsd_net_id);

	FUNC0(bmval1 & NFSD_WRITEONLY_ATTRS_WORD1);
	FUNC0(!FUNC30(minorversion, bmval));

	if (exp->ex_fslocs.migrated) {
		status = FUNC10(&bmval0, &bmval1, &bmval2, &rdattr_err);
		if (status)
			goto out;
	}

	err = FUNC35(&path, &stat, STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
	if (err)
		goto out_nfserr;
	if ((bmval0 & (FATTR4_WORD0_FILES_AVAIL | FATTR4_WORD0_FILES_FREE |
			FATTR4_WORD0_FILES_TOTAL | FATTR4_WORD0_MAXNAME)) ||
	    (bmval1 & (FATTR4_WORD1_SPACE_AVAIL | FATTR4_WORD1_SPACE_FREE |
		       FATTR4_WORD1_SPACE_TOTAL))) {
		err = FUNC36(&path, &statfs);
		if (err)
			goto out_nfserr;
	}
	if ((bmval0 & (FATTR4_WORD0_FILEHANDLE | FATTR4_WORD0_FSID)) && !fhp) {
		tempfh = FUNC18(sizeof(struct svc_fh), GFP_KERNEL);
		status = nfserr_jukebox;
		if (!tempfh)
			goto out;
		FUNC12(tempfh, NFS4_FHSIZE);
		status = FUNC11(tempfh, exp, dentry, NULL);
		if (status)
			goto out;
		fhp = tempfh;
	}
	if (bmval0 & FATTR4_WORD0_ACL) {
		err = FUNC29(rqstp, dentry, &acl);
		if (err == -EOPNOTSUPP)
			bmval0 &= ~FATTR4_WORD0_ACL;
		else if (err == -EINVAL) {
			status = nfserr_attrnotsupp;
			goto out;
		} else if (err != 0)
			goto out_nfserr;
	}

#ifdef CONFIG_NFSD_V4_SECURITY_LABEL
	if ((bmval2 & FATTR4_WORD2_SECURITY_LABEL) ||
	     bmval0 & FATTR4_WORD0_SUPPORTED_ATTRS) {
		if (exp->ex_flags & NFSEXP_SECURITY_LABEL)
			err = security_inode_getsecctx(d_inode(dentry),
						&context, &contextlen);
		else
			err = -EOPNOTSUPP;
		contextsupport = (err == 0);
		if (bmval2 & FATTR4_WORD2_SECURITY_LABEL) {
			if (err == -EOPNOTSUPP)
				bmval2 &= ~FATTR4_WORD2_SECURITY_LABEL;
			else if (err)
				goto out_nfserr;
		}
	}
#endif /* CONFIG_NFSD_V4_SECURITY_LABEL */

	status = FUNC23(xdr, bmval0, bmval1, bmval2);
	if (status)
		goto out;

	attrlen_offset = xdr->buf->len;
	p = FUNC41(xdr, 4);
	if (!p)
		goto out_resource;
	p++;                /* to be backfilled later */

	if (bmval0 & FATTR4_WORD0_SUPPORTED_ATTRS) {
		u32 supp[3];

		FUNC19(supp, nfsd_suppattrs[minorversion], sizeof(supp));

		if (!FUNC2(dentry->d_inode))
			supp[0] &= ~FATTR4_WORD0_ACL;
		if (!contextsupport)
			supp[2] &= ~FATTR4_WORD2_SECURITY_LABEL;
		if (!supp[2]) {
			p = FUNC41(xdr, 12);
			if (!p)
				goto out_resource;
			*p++ = FUNC6(2);
			*p++ = FUNC6(supp[0]);
			*p++ = FUNC6(supp[1]);
		} else {
			p = FUNC41(xdr, 16);
			if (!p)
				goto out_resource;
			*p++ = FUNC6(3);
			*p++ = FUNC6(supp[0]);
			*p++ = FUNC6(supp[1]);
			*p++ = FUNC6(supp[2]);
		}
	}
	if (bmval0 & FATTR4_WORD0_TYPE) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		dummy = FUNC21(stat.mode);
		if (dummy == NF4BAD) {
			status = nfserr_serverfault;
			goto out;
		}
		*p++ = FUNC6(dummy);
	}
	if (bmval0 & FATTR4_WORD0_FH_EXPIRE_TYPE) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		if (exp->ex_flags & NFSEXP_NOSUBTREECHECK)
			*p++ = FUNC6(NFS4_FH_PERSISTENT);
		else
			*p++ = FUNC6(NFS4_FH_PERSISTENT|
						NFS4_FH_VOL_RENAME);
	}
	if (bmval0 & FATTR4_WORD0_CHANGE) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC8(p, &stat, FUNC7(dentry), exp);
	}
	if (bmval0 & FATTR4_WORD0_SIZE) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, stat.size);
	}
	if (bmval0 & FATTR4_WORD0_LINK_SUPPORT) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval0 & FATTR4_WORD0_SYMLINK_SUPPORT) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval0 & FATTR4_WORD0_NAMED_ATTR) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(0);
	}
	if (bmval0 & FATTR4_WORD0_FSID) {
		p = FUNC41(xdr, 16);
		if (!p)
			goto out_resource;
		if (exp->ex_fslocs.migrated) {
			p = FUNC38(p, NFS4_REFERRAL_FSID_MAJOR);
			p = FUNC38(p, NFS4_REFERRAL_FSID_MINOR);
		} else switch(FUNC14(fhp)) {
		case FSIDSOURCE_FSID:
			p = FUNC38(p, (u64)exp->ex_fsid);
			p = FUNC38(p, (u64)0);
			break;
		case FSIDSOURCE_DEV:
			*p++ = FUNC6(0);
			*p++ = FUNC6(FUNC3(stat.dev));
			*p++ = FUNC6(0);
			*p++ = FUNC6(FUNC4(stat.dev));
			break;
		case FSIDSOURCE_UUID:
			p = FUNC40(p, exp->ex_uuid,
								EX_UUID_LEN);
			break;
		}
	}
	if (bmval0 & FATTR4_WORD0_UNIQUE_HANDLES) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(0);
	}
	if (bmval0 & FATTR4_WORD0_LEASE_TIME) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(nn->nfsd4_lease);
	}
	if (bmval0 & FATTR4_WORD0_RDATTR_ERROR) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(rdattr_err);
	}
	if (bmval0 & FATTR4_WORD0_ACL) {
		struct nfs4_ace *ace;

		if (acl == NULL) {
			p = FUNC41(xdr, 4);
			if (!p)
				goto out_resource;

			*p++ = FUNC6(0);
			goto out_acl;
		}
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(acl->naces);

		for (ace = acl->aces; ace < acl->aces + acl->naces; ace++) {
			p = FUNC41(xdr, 4*3);
			if (!p)
				goto out_resource;
			*p++ = FUNC6(ace->type);
			*p++ = FUNC6(ace->flag);
			*p++ = FUNC6(ace->access_mask &
							NFS4_ACE_MASK_ALL);
			status = FUNC22(xdr, rqstp, ace);
			if (status)
				goto out;
		}
	}
out_acl:
	if (bmval0 & FATTR4_WORD0_ACLSUPPORT) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(FUNC2(dentry->d_inode) ?
			ACL4_SUPPORT_ALLOW_ACL|ACL4_SUPPORT_DENY_ACL : 0);
	}
	if (bmval0 & FATTR4_WORD0_CANSETTIME) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval0 & FATTR4_WORD0_CASE_INSENSITIVE) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(0);
	}
	if (bmval0 & FATTR4_WORD0_CASE_PRESERVING) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval0 & FATTR4_WORD0_CHOWN_RESTRICTED) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval0 & FATTR4_WORD0_FILEHANDLE) {
		p = FUNC41(xdr, fhp->fh_handle.fh_size + 4);
		if (!p)
			goto out_resource;
		p = FUNC39(p, &fhp->fh_handle.fh_base,
					fhp->fh_handle.fh_size);
	}
	if (bmval0 & FATTR4_WORD0_FILEID) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, stat.ino);
	}
	if (bmval0 & FATTR4_WORD0_FILES_AVAIL) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (u64) statfs.f_ffree);
	}
	if (bmval0 & FATTR4_WORD0_FILES_FREE) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (u64) statfs.f_ffree);
	}
	if (bmval0 & FATTR4_WORD0_FILES_TOTAL) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (u64) statfs.f_files);
	}
	if (bmval0 & FATTR4_WORD0_FS_LOCATIONS) {
		status = FUNC24(xdr, rqstp, exp);
		if (status)
			goto out;
	}
	if (bmval0 & FATTR4_WORD0_HOMOGENEOUS) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval0 & FATTR4_WORD0_MAXFILESIZE) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, exp->ex_path.mnt->mnt_sb->s_maxbytes);
	}
	if (bmval0 & FATTR4_WORD0_MAXLINK) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(255);
	}
	if (bmval0 & FATTR4_WORD0_MAXNAME) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(statfs.f_namelen);
	}
	if (bmval0 & FATTR4_WORD0_MAXREAD) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (u64) FUNC34(rqstp));
	}
	if (bmval0 & FATTR4_WORD0_MAXWRITE) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (u64) FUNC34(rqstp));
	}
	if (bmval1 & FATTR4_WORD1_MODE) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(stat.mode & S_IALLUGO);
	}
	if (bmval1 & FATTR4_WORD1_NO_TRUNC) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(1);
	}
	if (bmval1 & FATTR4_WORD1_NUMLINKS) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = FUNC6(stat.nlink);
	}
	if (bmval1 & FATTR4_WORD1_OWNER) {
		status = FUNC28(xdr, rqstp, stat.uid);
		if (status)
			goto out;
	}
	if (bmval1 & FATTR4_WORD1_OWNER_GROUP) {
		status = FUNC25(xdr, rqstp, stat.gid);
		if (status)
			goto out;
	}
	if (bmval1 & FATTR4_WORD1_RAWDEV) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		*p++ = FUNC6((u32) FUNC3(stat.rdev));
		*p++ = FUNC6((u32) FUNC4(stat.rdev));
	}
	if (bmval1 & FATTR4_WORD1_SPACE_AVAIL) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		dummy64 = (u64)statfs.f_bavail * (u64)statfs.f_bsize;
		p = FUNC38(p, dummy64);
	}
	if (bmval1 & FATTR4_WORD1_SPACE_FREE) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		dummy64 = (u64)statfs.f_bfree * (u64)statfs.f_bsize;
		p = FUNC38(p, dummy64);
	}
	if (bmval1 & FATTR4_WORD1_SPACE_TOTAL) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		dummy64 = (u64)statfs.f_blocks * (u64)statfs.f_bsize;
		p = FUNC38(p, dummy64);
	}
	if (bmval1 & FATTR4_WORD1_SPACE_USED) {
		p = FUNC41(xdr, 8);
		if (!p)
			goto out_resource;
		dummy64 = (u64)stat.blocks << 9;
		p = FUNC38(p, dummy64);
	}
	if (bmval1 & FATTR4_WORD1_TIME_ACCESS) {
		p = FUNC41(xdr, 12);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (s64)stat.atime.tv_sec);
		*p++ = FUNC6(stat.atime.tv_nsec);
	}
	if (bmval1 & FATTR4_WORD1_TIME_DELTA) {
		p = FUNC41(xdr, 12);
		if (!p)
			goto out_resource;
		p = FUNC9(p, FUNC7(dentry));
	}
	if (bmval1 & FATTR4_WORD1_TIME_METADATA) {
		p = FUNC41(xdr, 12);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (s64)stat.ctime.tv_sec);
		*p++ = FUNC6(stat.ctime.tv_nsec);
	}
	if (bmval1 & FATTR4_WORD1_TIME_MODIFY) {
		p = FUNC41(xdr, 12);
		if (!p)
			goto out_resource;
		p = FUNC38(p, (s64)stat.mtime.tv_sec);
		*p++ = FUNC6(stat.mtime.tv_nsec);
	}
	if (bmval1 & FATTR4_WORD1_MOUNTED_ON_FILEID) {
		struct kstat parent_stat;
		u64 ino = stat.ino;

		p = FUNC41(xdr, 8);
		if (!p)
                	goto out_resource;
		/*
		 * Get parent's attributes if not ignoring crossmount
		 * and this is the root of a cross-mounted filesystem.
		 */
		if (ignore_crossmnt == 0 &&
		    dentry == exp->ex_path.mnt->mnt_root) {
			err = FUNC15(exp, &parent_stat);
			if (err)
				goto out_nfserr;
			ino = parent_stat.ino;
		}
		p = FUNC38(p, ino);
	}
#ifdef CONFIG_NFSD_PNFS
	if (bmval1 & FATTR4_WORD1_FS_LAYOUT_TYPES) {
		status = nfsd4_encode_layout_types(xdr, exp->ex_layout_types);
		if (status)
			goto out;
	}

	if (bmval2 & FATTR4_WORD2_LAYOUT_TYPES) {
		status = nfsd4_encode_layout_types(xdr, exp->ex_layout_types);
		if (status)
			goto out;
	}

	if (bmval2 & FATTR4_WORD2_LAYOUT_BLKSIZE) {
		p = xdr_reserve_space(xdr, 4);
		if (!p)
			goto out_resource;
		*p++ = cpu_to_be32(stat.blksize);
	}
#endif /* CONFIG_NFSD_PNFS */
	if (bmval2 & FATTR4_WORD2_SUPPATTR_EXCLCREAT) {
		u32 supp[3];

		FUNC19(supp, nfsd_suppattrs[minorversion], sizeof(supp));
		supp[0] &= NFSD_SUPPATTR_EXCLCREAT_WORD0;
		supp[1] &= NFSD_SUPPATTR_EXCLCREAT_WORD1;
		supp[2] &= NFSD_SUPPATTR_EXCLCREAT_WORD2;

		status = FUNC23(xdr, supp[0], supp[1], supp[2]);
		if (status)
			goto out;
	}

	if (bmval2 & FATTR4_WORD2_CHANGE_ATTR_TYPE) {
		p = FUNC41(xdr, 4);
		if (!p)
			goto out_resource;
		if (FUNC1(FUNC7(dentry)))
			*p++ = FUNC6(NFS4_CHANGE_TYPE_IS_MONOTONIC_INCR);
		else
			*p++ = FUNC6(NFS4_CHANGE_TYPE_IS_TIME_METADATA);
	}

#ifdef CONFIG_NFSD_V4_SECURITY_LABEL
	if (bmval2 & FATTR4_WORD2_SECURITY_LABEL) {
		status = nfsd4_encode_security_label(xdr, rqstp, context,
								contextlen);
		if (status)
			goto out;
	}
#endif

	attrlen = FUNC16(xdr->buf->len - attrlen_offset - 4);
	FUNC37(xdr->buf, attrlen_offset, &attrlen, 4);
	status = nfs_ok;

out:
#ifdef CONFIG_NFSD_V4_SECURITY_LABEL
	if (context)
		security_release_secctx(context, contextlen);
#endif /* CONFIG_NFSD_V4_SECURITY_LABEL */
	FUNC17(acl);
	if (tempfh) {
		FUNC13(tempfh);
		FUNC17(tempfh);
	}
	if (status)
		FUNC42(xdr, starting_len);
	return status;
out_nfserr:
	status = FUNC31(err);
	goto out;
out_resource:
	status = nfserr_resource;
	goto out;
}