
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct TYPE_5__ {int i_used; } ;
struct TYPE_6__ {TYPE_1__ bitmap1; } ;
struct TYPE_8__ {int i_chain; } ;
struct ocfs2_dinode {TYPE_2__ id1; TYPE_4__ id2; } ;
struct ocfs2_chain_list {TYPE_3__* cl_recs; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_7__ {int c_free; } ;


 int cpu_to_le32 (scalar_t__) ;
 int le32_add_cpu (int *,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

void ocfs2_rollback_alloc_dinode_counts(struct inode *inode,
           struct buffer_head *di_bh,
           u32 num_bits,
           u16 chain)
{
 u32 tmp_used;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;
 struct ocfs2_chain_list *cl;

 cl = (struct ocfs2_chain_list *)&di->id2.i_chain;
 tmp_used = le32_to_cpu(di->id1.bitmap1.i_used);
 di->id1.bitmap1.i_used = cpu_to_le32(tmp_used - num_bits);
 le32_add_cpu(&cl->cl_recs[chain].c_free, num_bits);
}
