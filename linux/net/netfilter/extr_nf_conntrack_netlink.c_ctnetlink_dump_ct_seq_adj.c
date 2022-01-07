
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_ct_seqadj {int dummy; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int status; int lock; } ;


 int CTA_SEQ_ADJ_ORIG ;
 int CTA_SEQ_ADJ_REPLY ;
 int IPS_SEQ_ADJUST ;
 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int dump_ct_seq_adj (struct sk_buff*,struct nf_ct_seqadj*,int ) ;
 struct nf_conn_seqadj* nfct_seqadj (struct nf_conn*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ctnetlink_dump_ct_seq_adj(struct sk_buff *skb, struct nf_conn *ct)
{
 struct nf_conn_seqadj *seqadj = nfct_seqadj(ct);
 struct nf_ct_seqadj *seq;

 if (!(ct->status & IPS_SEQ_ADJUST) || !seqadj)
  return 0;

 spin_lock_bh(&ct->lock);
 seq = &seqadj->seq[IP_CT_DIR_ORIGINAL];
 if (dump_ct_seq_adj(skb, seq, CTA_SEQ_ADJ_ORIG) == -1)
  goto err;

 seq = &seqadj->seq[IP_CT_DIR_REPLY];
 if (dump_ct_seq_adj(skb, seq, CTA_SEQ_ADJ_REPLY) == -1)
  goto err;

 spin_unlock_bh(&ct->lock);
 return 0;
err:
 spin_unlock_bh(&ct->lock);
 return -1;
}
