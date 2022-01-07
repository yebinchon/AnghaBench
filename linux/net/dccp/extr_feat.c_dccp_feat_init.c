
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head dccps_featneg; } ;


 int DCCPF_CCID ;
 int DCCPF_ECN_INCAPABLE ;
 int DCCPF_SEQUENCE_WINDOW ;
 int DCCPF_SHORT_SEQNOS ;
 int ENOBUFS ;
 int __feat_register_nn (struct list_head*,int ,int ,int ) ;
 int __feat_register_sp (struct list_head*,int ,int,int,int*,int) ;
 scalar_t__ ccid_get_builtin_ccids (int**,int*) ;
 int dccp_feat_prefer (int ,int*,int) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int kfree (int*) ;
 int sysctl_dccp_rx_ccid ;
 int sysctl_dccp_sequence_window ;
 int sysctl_dccp_tx_ccid ;

int dccp_feat_init(struct sock *sk)
{
 struct list_head *fn = &dccp_sk(sk)->dccps_featneg;
 u8 on = 1, off = 0;
 int rc;
 struct {
  u8 *val;
  u8 len;
 } tx, rx;


 rc = __feat_register_nn(fn, DCCPF_SEQUENCE_WINDOW, 0,
        sysctl_dccp_sequence_window);
 if (rc)
  return rc;




 rc = __feat_register_sp(fn, DCCPF_SHORT_SEQNOS, 1, 1, &off, 1);
 if (rc)
  return rc;


 rc = __feat_register_sp(fn, DCCPF_ECN_INCAPABLE, 1, 1, &on, 1);
 if (rc)
  return rc;







 if (ccid_get_builtin_ccids(&tx.val, &tx.len))
  return -ENOBUFS;
 if (ccid_get_builtin_ccids(&rx.val, &rx.len)) {
  kfree(tx.val);
  return -ENOBUFS;
 }

 if (!dccp_feat_prefer(sysctl_dccp_tx_ccid, tx.val, tx.len) ||
     !dccp_feat_prefer(sysctl_dccp_rx_ccid, rx.val, rx.len))
  goto free_ccid_lists;

 rc = __feat_register_sp(fn, DCCPF_CCID, 1, 0, tx.val, tx.len);
 if (rc)
  goto free_ccid_lists;

 rc = __feat_register_sp(fn, DCCPF_CCID, 0, 0, rx.val, rx.len);

free_ccid_lists:
 kfree(tx.val);
 kfree(rx.val);
 return rc;
}
