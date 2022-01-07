
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct dccp_ackvec_record {int avr_ack_runlen; scalar_t__ avr_ack_ackno; scalar_t__ avr_ack_seqno; int avr_node; int avr_ack_nonce; scalar_t__ avr_ack_ptr; } ;
struct dccp_ackvec {int av_records; scalar_t__ av_overflow; scalar_t__ av_buf_head; scalar_t__ av_buf; scalar_t__ av_buf_ackno; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int dccp_ackvec_purge_records (struct dccp_ackvec*) ;
 int dccp_ackvec_record_slab ;
 int dccp_ackvec_runlen (scalar_t__) ;
 int dccp_pr_debug (char*,unsigned long long,unsigned long long,int ) ;
 struct dccp_ackvec_record* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,int *) ;

int dccp_ackvec_update_records(struct dccp_ackvec *av, u64 seqno, u8 nonce_sum)
{
 struct dccp_ackvec_record *avr;

 avr = kmem_cache_alloc(dccp_ackvec_record_slab, GFP_ATOMIC);
 if (avr == ((void*)0))
  return -ENOBUFS;

 avr->avr_ack_seqno = seqno;
 avr->avr_ack_ptr = av->av_buf_head;
 avr->avr_ack_ackno = av->av_buf_ackno;
 avr->avr_ack_nonce = nonce_sum;
 avr->avr_ack_runlen = dccp_ackvec_runlen(av->av_buf + av->av_buf_head);






 if (av->av_overflow)
  dccp_ackvec_purge_records(av);




 list_add(&avr->avr_node, &av->av_records);

 dccp_pr_debug("Added Vector, ack_seqno=%llu, ack_ackno=%llu (rl=%u)\n",
        (unsigned long long)avr->avr_ack_seqno,
        (unsigned long long)avr->avr_ack_ackno,
        avr->avr_ack_runlen);
 return 0;
}
