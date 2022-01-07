
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_suballoc_result {scalar_t__ sr_blkno; int sr_bit_offset; scalar_t__ sr_bg_blkno; } ;


 scalar_t__ ocfs2_which_suballoc_group (scalar_t__,int ) ;

__attribute__((used)) static u64 ocfs2_group_from_res(struct ocfs2_suballoc_result *res)
{
 if (res->sr_blkno == 0)
  return 0;

 if (res->sr_bg_blkno)
  return res->sr_bg_blkno;

 return ocfs2_which_suballoc_group(res->sr_blkno, res->sr_bit_offset);
}
