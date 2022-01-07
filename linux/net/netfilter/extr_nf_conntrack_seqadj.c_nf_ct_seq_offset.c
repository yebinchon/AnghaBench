
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_ct_seqadj {int offset_before; int offset_after; int correction_pos; } ;
struct nf_conn_seqadj {struct nf_ct_seqadj* seq; } ;
struct nf_conn {int dummy; } ;
typedef int s32 ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;


 scalar_t__ after (int ,int ) ;
 struct nf_conn_seqadj* nfct_seqadj (struct nf_conn const*) ;

s32 nf_ct_seq_offset(const struct nf_conn *ct,
       enum ip_conntrack_dir dir,
       u32 seq)
{
 struct nf_conn_seqadj *seqadj = nfct_seqadj(ct);
 struct nf_ct_seqadj *this_way;

 if (!seqadj)
  return 0;

 this_way = &seqadj->seq[dir];
 return after(seq, this_way->correction_pos) ?
   this_way->offset_after : this_way->offset_before;
}
