
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_6__ {unsigned int op_nents; int * op_sg; } ;
struct TYPE_4__ {int h_len; } ;
struct TYPE_5__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_3__ data; TYPE_2__ m_inc; int m_flags; } ;


 void* DIV_ROUND_UP (unsigned int,int ) ;
 int ENOMEM ;
 struct rds_message* ERR_PTR (int) ;
 int GFP_NOWAIT ;
 int PAGE_SIZE ;
 int RDS_MSG_PAGEVEC ;
 int cpu_to_be32 (unsigned int) ;
 struct rds_message* rds_message_alloc (int,int ) ;
 int * rds_message_alloc_sgs (struct rds_message*,int,int*) ;
 int rds_message_put (struct rds_message*) ;
 int set_bit (int ,int *) ;
 int sg_set_page (int *,int ,int ,int ) ;
 int virt_to_page (unsigned long) ;

struct rds_message *rds_message_map_pages(unsigned long *page_addrs, unsigned int total_len)
{
 struct rds_message *rm;
 unsigned int i;
 int num_sgs = DIV_ROUND_UP(total_len, PAGE_SIZE);
 int extra_bytes = num_sgs * sizeof(struct scatterlist);
 int ret;

 rm = rds_message_alloc(extra_bytes, GFP_NOWAIT);
 if (!rm)
  return ERR_PTR(-ENOMEM);

 set_bit(RDS_MSG_PAGEVEC, &rm->m_flags);
 rm->m_inc.i_hdr.h_len = cpu_to_be32(total_len);
 rm->data.op_nents = DIV_ROUND_UP(total_len, PAGE_SIZE);
 rm->data.op_sg = rds_message_alloc_sgs(rm, num_sgs, &ret);
 if (!rm->data.op_sg) {
  rds_message_put(rm);
  return ERR_PTR(ret);
 }

 for (i = 0; i < rm->data.op_nents; ++i) {
  sg_set_page(&rm->data.op_sg[i],
    virt_to_page(page_addrs[i]),
    PAGE_SIZE, 0);
 }

 return rm;
}
