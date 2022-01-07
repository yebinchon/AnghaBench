
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conn_seqadj {int * seq; } ;
struct nf_conn {int lock; int status; } ;


 size_t CTA_SEQ_ADJ_ORIG ;
 size_t CTA_SEQ_ADJ_REPLY ;
 int IPS_SEQ_ADJUST_BIT ;
 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int change_seq_adj (int *,struct nlattr const* const) ;
 struct nf_conn_seqadj* nfct_seqadj (struct nf_conn*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
ctnetlink_change_seq_adj(struct nf_conn *ct,
    const struct nlattr * const cda[])
{
 struct nf_conn_seqadj *seqadj = nfct_seqadj(ct);
 int ret = 0;

 if (!seqadj)
  return 0;

 spin_lock_bh(&ct->lock);
 if (cda[CTA_SEQ_ADJ_ORIG]) {
  ret = change_seq_adj(&seqadj->seq[IP_CT_DIR_ORIGINAL],
         cda[CTA_SEQ_ADJ_ORIG]);
  if (ret < 0)
   goto err;

  set_bit(IPS_SEQ_ADJUST_BIT, &ct->status);
 }

 if (cda[CTA_SEQ_ADJ_REPLY]) {
  ret = change_seq_adj(&seqadj->seq[IP_CT_DIR_REPLY],
         cda[CTA_SEQ_ADJ_REPLY]);
  if (ret < 0)
   goto err;

  set_bit(IPS_SEQ_ADJUST_BIT, &ct->status);
 }

 spin_unlock_bh(&ct->lock);
 return 0;
err:
 spin_unlock_bh(&ct->lock);
 return ret;
}
