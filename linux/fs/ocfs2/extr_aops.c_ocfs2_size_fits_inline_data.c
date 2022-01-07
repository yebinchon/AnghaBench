
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int id_count; } ;
struct TYPE_4__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ le16_to_cpu (int ) ;

int ocfs2_size_fits_inline_data(struct buffer_head *di_bh, u64 new_size)
{
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

 if (new_size <= le16_to_cpu(di->id2.i_data.id_count))
  return 1;
 return 0;
}
