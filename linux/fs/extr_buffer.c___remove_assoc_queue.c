
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int * b_assoc_map; int b_assoc_buffers; } ;


 int WARN_ON (int) ;
 int list_del_init (int *) ;

__attribute__((used)) static void __remove_assoc_queue(struct buffer_head *bh)
{
 list_del_init(&bh->b_assoc_buffers);
 WARN_ON(!bh->b_assoc_map);
 bh->b_assoc_map = ((void*)0);
}
