
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct nfs4_ace {scalar_t__ whotype; int flag; int who_uid; int who_gid; } ;
typedef int __be32 ;


 int NFS4_ACE_IDENTIFIER_GROUP ;
 scalar_t__ NFS4_ACL_WHO_NAMED ;
 int nfs4_acl_write_who (struct xdr_stream*,scalar_t__) ;
 int nfsd4_encode_group (struct xdr_stream*,struct svc_rqst*,int ) ;
 int nfsd4_encode_user (struct xdr_stream*,struct svc_rqst*,int ) ;

__attribute__((used)) static inline __be32
nfsd4_encode_aclname(struct xdr_stream *xdr, struct svc_rqst *rqstp,
       struct nfs4_ace *ace)
{
 if (ace->whotype != NFS4_ACL_WHO_NAMED)
  return nfs4_acl_write_who(xdr, ace->whotype);
 else if (ace->flag & NFS4_ACE_IDENTIFIER_GROUP)
  return nfsd4_encode_group(xdr, rqstp, ace->who_gid);
 else
  return nfsd4_encode_user(xdr, rqstp, ace->who_uid);
}
