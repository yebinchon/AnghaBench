
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_seqadj {scalar_t__ offset_before; scalar_t__ offset_after; int correction_pos; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int lock; int status; } ;
typedef scalar_t__ s32 ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef int __be32 ;


 int CTINFO2DIR (int) ;
 int IPS_SEQ_ADJUST_BIT ;
 int WARN_ONCE (int,char*) ;
 scalar_t__ before (int ,int ) ;
 struct nf_conn_seqadj* nfct_seqadj (struct nf_conn*) ;
 int ntohl (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

int nf_ct_seqadj_set(struct nf_conn *ct, enum ip_conntrack_info ctinfo,
       __be32 seq, s32 off)
{
 struct nf_conn_seqadj *seqadj = nfct_seqadj(ct);
 enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);
 struct nf_ct_seqadj *this_way;

 if (off == 0)
  return 0;

 if (unlikely(!seqadj)) {
  WARN_ONCE(1, "Missing nfct_seqadj_ext_add() setup call\n");
  return 0;
 }

 set_bit(IPS_SEQ_ADJUST_BIT, &ct->status);

 spin_lock_bh(&ct->lock);
 this_way = &seqadj->seq[dir];
 if (this_way->offset_before == this_way->offset_after ||
     before(this_way->correction_pos, ntohl(seq))) {
  this_way->correction_pos = ntohl(seq);
  this_way->offset_before = this_way->offset_after;
  this_way->offset_after += off;
 }
 spin_unlock_bh(&ct->lock);
 return 0;
}
