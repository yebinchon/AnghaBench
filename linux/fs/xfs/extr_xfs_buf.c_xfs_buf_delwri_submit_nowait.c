
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int xfs_buf_delwri_submit_buffers (struct list_head*,int *) ;

int
xfs_buf_delwri_submit_nowait(
 struct list_head *buffer_list)
{
 return xfs_buf_delwri_submit_buffers(buffer_list, ((void*)0));
}
