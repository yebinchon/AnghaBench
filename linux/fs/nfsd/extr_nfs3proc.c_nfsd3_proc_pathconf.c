
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_rqst {struct nfsd3_pathconfres* rq_resp; struct nfsd_fhandle* rq_argp; } ;
struct super_block {int s_magic; } ;
struct TYPE_6__ {TYPE_1__* fh_dentry; } ;
struct nfsd_fhandle {TYPE_2__ fh; } ;
struct nfsd3_pathconfres {int p_link_max; int p_name_max; int p_chown_restricted; int p_case_insensitive; int p_case_preserving; scalar_t__ p_no_trunc; } ;
typedef scalar_t__ __be32 ;
struct TYPE_5__ {struct super_block* d_sb; } ;


 int EXT2_LINK_MAX ;
 int EXT2_NAME_LEN ;


 int NFSD_MAY_NOP ;
 int RETURN_STATUS (scalar_t__) ;
 int SVCFH_fmt (TYPE_2__*) ;
 int dprintk (char*,int ) ;
 int fh_put (TYPE_2__*) ;
 scalar_t__ fh_verify (struct svc_rqst*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static __be32
nfsd3_proc_pathconf(struct svc_rqst *rqstp)
{
 struct nfsd_fhandle *argp = rqstp->rq_argp;
 struct nfsd3_pathconfres *resp = rqstp->rq_resp;
 __be32 nfserr;

 dprintk("nfsd: PATHCONF(3) %s\n",
    SVCFH_fmt(&argp->fh));


 resp->p_link_max = 255;
 resp->p_name_max = 255;
 resp->p_no_trunc = 0;
 resp->p_chown_restricted = 1;
 resp->p_case_insensitive = 0;
 resp->p_case_preserving = 1;

 nfserr = fh_verify(rqstp, &argp->fh, 0, NFSD_MAY_NOP);

 if (nfserr == 0) {
  struct super_block *sb = argp->fh.fh_dentry->d_sb;


  switch (sb->s_magic) {
  case 129:
   resp->p_link_max = EXT2_LINK_MAX;
   resp->p_name_max = EXT2_NAME_LEN;
   break;
  case 128:
   resp->p_case_insensitive = 1;
   resp->p_case_preserving = 0;
   break;
  }
 }

 fh_put(&argp->fh);
 RETURN_STATUS(nfserr);
}
