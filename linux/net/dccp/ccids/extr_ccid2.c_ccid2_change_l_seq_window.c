
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sock {int dummy; } ;


 int DCCPF_SEQUENCE_WINDOW ;
 int DCCPF_SEQ_WMAX ;
 int DCCPF_SEQ_WMIN ;
 int clamp_val (int ,int ,int ) ;
 int dccp_feat_signal_nn_change (struct sock*,int ,int ) ;

__attribute__((used)) static void ccid2_change_l_seq_window(struct sock *sk, u64 val)
{
 dccp_feat_signal_nn_change(sk, DCCPF_SEQUENCE_WINDOW,
       clamp_val(val, DCCPF_SEQ_WMIN,
        DCCPF_SEQ_WMAX));
}
