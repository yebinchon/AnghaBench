
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct sock {scalar_t__ sk_state; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {scalar_t__ nn; } ;
struct dccp_feat_entry {TYPE_1__ val; } ;
struct TYPE_6__ {scalar_t__ nn; } ;
typedef TYPE_2__ dccp_feat_val ;
struct TYPE_7__ {struct list_head dccps_featneg; } ;


 scalar_t__ DCCP_OPEN ;
 scalar_t__ DCCP_PARTOPEN ;
 int EINVAL ;
 scalar_t__ FEAT_NN ;
 int dccp_feat_is_valid_nn_val (int ,scalar_t__) ;
 struct dccp_feat_entry* dccp_feat_list_lookup (struct list_head*,int ,int) ;
 int dccp_feat_list_pop (struct dccp_feat_entry*) ;
 scalar_t__ dccp_feat_nn_get (struct sock*,int ) ;
 int dccp_feat_push_change (struct list_head*,int ,int,int ,TYPE_2__*) ;
 scalar_t__ dccp_feat_type (int ) ;
 int dccp_pr_debug (char*,unsigned long long,unsigned long long) ;
 TYPE_3__* dccp_sk (struct sock*) ;
 int inet_csk_schedule_ack (struct sock*) ;

int dccp_feat_signal_nn_change(struct sock *sk, u8 feat, u64 nn_val)
{
 struct list_head *fn = &dccp_sk(sk)->dccps_featneg;
 dccp_feat_val fval = { .nn = nn_val };
 struct dccp_feat_entry *entry;

 if (sk->sk_state != DCCP_OPEN && sk->sk_state != DCCP_PARTOPEN)
  return 0;

 if (dccp_feat_type(feat) != FEAT_NN ||
     !dccp_feat_is_valid_nn_val(feat, nn_val))
  return -EINVAL;

 if (nn_val == dccp_feat_nn_get(sk, feat))
  return 0;

 entry = dccp_feat_list_lookup(fn, feat, 1);
 if (entry != ((void*)0)) {
  dccp_pr_debug("Clobbering existing NN entry %llu -> %llu\n",
         (unsigned long long)entry->val.nn,
         (unsigned long long)nn_val);
  dccp_feat_list_pop(entry);
 }

 inet_csk_schedule_ack(sk);
 return dccp_feat_push_change(fn, feat, 1, 0, &fval);
}
