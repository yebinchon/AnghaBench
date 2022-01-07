
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_seqadj {scalar_t__ offset_after; scalar_t__ offset_before; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int status; } ;
typedef scalar_t__ s32 ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;


 int CTINFO2DIR (int) ;
 int IPS_SEQ_ADJUST_BIT ;
 struct nf_conn_seqadj* nfct_seqadj (struct nf_conn*) ;
 int set_bit (int ,int *) ;

int nf_ct_seqadj_init(struct nf_conn *ct, enum ip_conntrack_info ctinfo,
        s32 off)
{
 enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);
 struct nf_conn_seqadj *seqadj;
 struct nf_ct_seqadj *this_way;

 if (off == 0)
  return 0;

 set_bit(IPS_SEQ_ADJUST_BIT, &ct->status);

 seqadj = nfct_seqadj(ct);
 this_way = &seqadj->seq[dir];
 this_way->offset_before = off;
 this_way->offset_after = off;
 return 0;
}
