
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int seqid; } ;
struct nfs4_state {int seqlock; TYPE_1__ open_stateid; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {int seqid; } ;
typedef TYPE_2__ nfs4_stateid ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int nfs4_state_match_open_stateid_other (struct nfs4_state*,TYPE_2__*) ;
 int nfs4_valid_open_stateid (struct nfs4_state*) ;
 int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,int) ;

__attribute__((used)) static bool nfs4_refresh_open_old_stateid(nfs4_stateid *dst,
  struct nfs4_state *state)
{
 __be32 seqid_open;
 u32 dst_seqid;
 bool ret;
 int seq;

 for (;;) {
  ret = 0;
  if (!nfs4_valid_open_stateid(state))
   break;
  seq = read_seqbegin(&state->seqlock);
  if (!nfs4_state_match_open_stateid_other(state, dst)) {
   if (read_seqretry(&state->seqlock, seq))
    continue;
   break;
  }
  seqid_open = state->open_stateid.seqid;
  if (read_seqretry(&state->seqlock, seq))
   continue;

  dst_seqid = be32_to_cpu(dst->seqid);
  if ((s32)(dst_seqid - be32_to_cpu(seqid_open)) >= 0)
   dst->seqid = cpu_to_be32(dst_seqid + 1);
  else
   dst->seqid = seqid_open;
  ret = 1;
  break;
 }

 return ret;
}
