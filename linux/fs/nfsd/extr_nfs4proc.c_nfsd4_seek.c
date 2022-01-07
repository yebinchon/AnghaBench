
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_seek {int seek_whence; scalar_t__ seek_pos; int seek_eof; int seek_offset; int seek_stateid; } ;
union nfsd4_op_u {struct nfsd4_seek seek; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_file {int nf_file; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef scalar_t__ __be32 ;




 int RD_STATE ;
 int SEEK_DATA ;
 int SEEK_HOLE ;
 int dprintk (char*) ;
 int file_inode (int ) ;
 scalar_t__ i_size_read (int ) ;
 scalar_t__ nfs4_preprocess_stateid_op (struct svc_rqst*,struct nfsd4_compound_state*,int *,int *,int ,struct nfsd_file**) ;
 int nfsd_file_put (struct nfsd_file*) ;
 scalar_t__ nfserr_union_notsupp ;
 scalar_t__ nfserrno (scalar_t__) ;
 scalar_t__ vfs_llseek (int ,int ,int) ;

__attribute__((used)) static __be32
nfsd4_seek(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    union nfsd4_op_u *u)
{
 struct nfsd4_seek *seek = &u->seek;
 int whence;
 __be32 status;
 struct nfsd_file *nf;

 status = nfs4_preprocess_stateid_op(rqstp, cstate, &cstate->current_fh,
         &seek->seek_stateid,
         RD_STATE, &nf);
 if (status) {
  dprintk("NFSD: nfsd4_seek: couldn't process stateid!\n");
  return status;
 }

 switch (seek->seek_whence) {
 case 129:
  whence = SEEK_DATA;
  break;
 case 128:
  whence = SEEK_HOLE;
  break;
 default:
  status = nfserr_union_notsupp;
  goto out;
 }





 seek->seek_pos = vfs_llseek(nf->nf_file, seek->seek_offset, whence);
 if (seek->seek_pos < 0)
  status = nfserrno(seek->seek_pos);
 else if (seek->seek_pos >= i_size_read(file_inode(nf->nf_file)))
  seek->seek_eof = 1;

out:
 nfsd_file_put(nf);
 return status;
}
