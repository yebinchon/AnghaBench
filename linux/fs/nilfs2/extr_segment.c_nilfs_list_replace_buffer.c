
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_assoc_buffers; } ;


 int BUG_ON (int) ;
 int list_empty (int *) ;
 int list_replace_init (int *,int *) ;

__attribute__((used)) static void nilfs_list_replace_buffer(struct buffer_head *old_bh,
          struct buffer_head *new_bh)
{
 BUG_ON(!list_empty(&new_bh->b_assoc_buffers));

 list_replace_init(&old_bh->b_assoc_buffers, &new_bh->b_assoc_buffers);

}
