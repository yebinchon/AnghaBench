
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_6__ {int ia_valid; } ;
struct nfsd4_create {int cr_type; int cr_cinfo; int cr_bmval; int * cr_acl; TYPE_3__ cr_label; TYPE_2__ cr_iattr; int cr_namelen; int cr_name; int cr_specdata2; int cr_specdata1; int cr_data; scalar_t__ cr_umask; } ;
union nfsd4_op_u {struct nfsd4_create create; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int dev_t ;
typedef scalar_t__ __be32 ;
struct TYPE_8__ {TYPE_1__* fs; } ;
struct TYPE_5__ {scalar_t__ umask; } ;


 int ATTR_SIZE ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MKDEV (int ,int ) ;






 int NFS4_FHSIZE ;
 int NFSD_MAY_NOP ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFSOCK ;
 scalar_t__ check_attr_support (struct svc_rqst*,struct nfsd4_compound_state*,int ,int ) ;
 TYPE_4__* current ;
 int do_set_nfs4_acl (struct svc_rqst*,struct svc_fh*,int *,int ) ;
 int fh_dup2 (int *,struct svc_fh*) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 int fh_unlock (int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 int nfsd4_security_inode_setsecctx (struct svc_fh*,TYPE_3__*,int ) ;
 int nfsd_attrmask ;
 scalar_t__ nfsd_create (struct svc_rqst*,int *,int ,int ,TYPE_2__*,int ,int ,struct svc_fh*) ;
 scalar_t__ nfsd_symlink (struct svc_rqst*,int *,int ,int ,int ,struct svc_fh*) ;
 scalar_t__ nfserr_badtype ;
 scalar_t__ nfserr_inval ;
 int set_change_info (int *,int *) ;

__attribute__((used)) static __be32
nfsd4_create(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      union nfsd4_op_u *u)
{
 struct nfsd4_create *create = &u->create;
 struct svc_fh resfh;
 __be32 status;
 dev_t rdev;

 fh_init(&resfh, NFS4_FHSIZE);

 status = fh_verify(rqstp, &cstate->current_fh, S_IFDIR, NFSD_MAY_NOP);
 if (status)
  return status;

 status = check_attr_support(rqstp, cstate, create->cr_bmval,
        nfsd_attrmask);
 if (status)
  return status;

 current->fs->umask = create->cr_umask;
 switch (create->cr_type) {
 case 129:
  status = nfsd_symlink(rqstp, &cstate->current_fh,
          create->cr_name, create->cr_namelen,
          create->cr_data, &resfh);
  break;

 case 133:
  status = nfserr_inval;
  rdev = MKDEV(create->cr_specdata1, create->cr_specdata2);
  if (MAJOR(rdev) != create->cr_specdata1 ||
      MINOR(rdev) != create->cr_specdata2)
   goto out_umask;
  status = nfsd_create(rqstp, &cstate->current_fh,
         create->cr_name, create->cr_namelen,
         &create->cr_iattr, S_IFBLK, rdev, &resfh);
  break;

 case 132:
  status = nfserr_inval;
  rdev = MKDEV(create->cr_specdata1, create->cr_specdata2);
  if (MAJOR(rdev) != create->cr_specdata1 ||
      MINOR(rdev) != create->cr_specdata2)
   goto out_umask;
  status = nfsd_create(rqstp, &cstate->current_fh,
         create->cr_name, create->cr_namelen,
         &create->cr_iattr,S_IFCHR, rdev, &resfh);
  break;

 case 128:
  status = nfsd_create(rqstp, &cstate->current_fh,
         create->cr_name, create->cr_namelen,
         &create->cr_iattr, S_IFSOCK, 0, &resfh);
  break;

 case 130:
  status = nfsd_create(rqstp, &cstate->current_fh,
         create->cr_name, create->cr_namelen,
         &create->cr_iattr, S_IFIFO, 0, &resfh);
  break;

 case 131:
  create->cr_iattr.ia_valid &= ~ATTR_SIZE;
  status = nfsd_create(rqstp, &cstate->current_fh,
         create->cr_name, create->cr_namelen,
         &create->cr_iattr, S_IFDIR, 0, &resfh);
  break;

 default:
  status = nfserr_badtype;
 }

 if (status)
  goto out;

 if (create->cr_label.len)
  nfsd4_security_inode_setsecctx(&resfh, &create->cr_label, create->cr_bmval);

 if (create->cr_acl != ((void*)0))
  do_set_nfs4_acl(rqstp, &resfh, create->cr_acl,
    create->cr_bmval);

 fh_unlock(&cstate->current_fh);
 set_change_info(&create->cr_cinfo, &cstate->current_fh);
 fh_dup2(&cstate->current_fh, &resfh);
out:
 fh_put(&resfh);
out_umask:
 current->fs->umask = 0;
 return status;
}
