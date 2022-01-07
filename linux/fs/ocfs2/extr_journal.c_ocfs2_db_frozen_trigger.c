
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_block_trailer {int db_check; } ;
struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ocfs2_block_check_compute (void*,size_t,int *) ;
 struct ocfs2_dir_block_trailer* ocfs2_dir_trailer_from_size (size_t,void*) ;

__attribute__((used)) static void ocfs2_db_frozen_trigger(struct jbd2_buffer_trigger_type *triggers,
     struct buffer_head *bh,
     void *data, size_t size)
{
 struct ocfs2_dir_block_trailer *trailer =
  ocfs2_dir_trailer_from_size(size, data);







 ocfs2_block_check_compute(data, size, &trailer->db_check);
}
