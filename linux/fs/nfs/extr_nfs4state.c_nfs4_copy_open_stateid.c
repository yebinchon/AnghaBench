
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int open_stateid; int flags; int seqlock; } ;
typedef int nfs4_stateid ;


 int NFS_OPEN_STATE ;
 int nfs4_stateid_copy (int *,int const*) ;
 int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int zero_stateid ;

bool nfs4_copy_open_stateid(nfs4_stateid *dst, struct nfs4_state *state)
{
 bool ret;
 const nfs4_stateid *src;
 int seq;

 do {
  ret = 0;
  src = &zero_stateid;
  seq = read_seqbegin(&state->seqlock);
  if (test_bit(NFS_OPEN_STATE, &state->flags)) {
   src = &state->open_stateid;
   ret = 1;
  }
  nfs4_stateid_copy(dst, src);
 } while (read_seqretry(&state->seqlock, seq));
 return ret;
}
