
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_verify {int* ve_bmval; int ve_attrlen; int ve_attrval; } ;
struct TYPE_3__ {int fh_dentry; int fh_export; } ;
struct nfsd4_compound_state {TYPE_1__ current_fh; } ;
typedef scalar_t__ __be32 ;


 int FATTR4_WORD0_RDATTR_ERROR ;
 int GFP_KERNEL ;
 int NFSD_MAY_NOP ;
 int NFSD_WRITEONLY_ATTRS_WORD1 ;
 scalar_t__ check_attr_support (struct svc_rqst*,struct nfsd4_compound_state*,int*,int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,TYPE_1__*,int ,int ) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int memcmp (scalar_t__*,int ,int) ;
 scalar_t__ nfsd4_encode_fattr_to_buf (scalar_t__**,int,TYPE_1__*,int ,int ,int*,struct svc_rqst*,int ) ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserr_not_same ;
 scalar_t__ nfserr_resource ;
 scalar_t__ nfserr_same ;
 int ntohl (scalar_t__) ;

__attribute__((used)) static __be32
_nfsd4_verify(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      struct nfsd4_verify *verify)
{
 __be32 *buf, *p;
 int count;
 __be32 status;

 status = fh_verify(rqstp, &cstate->current_fh, 0, NFSD_MAY_NOP);
 if (status)
  return status;

 status = check_attr_support(rqstp, cstate, verify->ve_bmval, ((void*)0));
 if (status)
  return status;

 if ((verify->ve_bmval[0] & FATTR4_WORD0_RDATTR_ERROR)
     || (verify->ve_bmval[1] & NFSD_WRITEONLY_ATTRS_WORD1))
  return nfserr_inval;
 if (verify->ve_attrlen & 3)
  return nfserr_inval;




 count = 4 + (verify->ve_attrlen >> 2);
 buf = kmalloc(count << 2, GFP_KERNEL);
 if (!buf)
  return nfserr_jukebox;

 p = buf;
 status = nfsd4_encode_fattr_to_buf(&p, count, &cstate->current_fh,
        cstate->current_fh.fh_export,
        cstate->current_fh.fh_dentry,
        verify->ve_bmval,
        rqstp, 0);




 if (status == nfserr_resource)
  status = nfserr_not_same;
 if (status)
  goto out_kfree;


 p = buf + 1 + ntohl(buf[0]);
 status = nfserr_not_same;
 if (ntohl(*p++) != verify->ve_attrlen)
  goto out_kfree;
 if (!memcmp(p, verify->ve_attrval, verify->ve_attrlen))
  status = nfserr_same;

out_kfree:
 kfree(buf);
 return status;
}
