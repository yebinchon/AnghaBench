
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int dccps_l_seq_win; int dccps_l_ack_ratio; int dccps_featneg; } ;
struct TYPE_2__ {int nn; } ;
struct dccp_feat_entry {TYPE_1__ val; } ;




 int DCCP_BUG (char*,int ) ;
 scalar_t__ FEAT_NN ;
 struct dccp_feat_entry* dccp_feat_list_lookup (int *,int ,int) ;
 scalar_t__ dccp_feat_type (int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

u64 dccp_feat_nn_get(struct sock *sk, u8 feat)
{
 if (dccp_feat_type(feat) == FEAT_NN) {
  struct dccp_sock *dp = dccp_sk(sk);
  struct dccp_feat_entry *entry;

  entry = dccp_feat_list_lookup(&dp->dccps_featneg, feat, 1);
  if (entry != ((void*)0))
   return entry->val.nn;

  switch (feat) {
  case 129:
   return dp->dccps_l_ack_ratio;
  case 128:
   return dp->dccps_l_seq_win;
  }
 }
 DCCP_BUG("attempt to look up unsupported feature %u", feat);
 return 0;
}
