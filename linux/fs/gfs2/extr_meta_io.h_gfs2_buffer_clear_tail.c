
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_size; scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static inline void gfs2_buffer_clear_tail(struct buffer_head *bh, int head)
{
 BUG_ON(head > bh->b_size);
 memset(bh->b_data + head, 0, bh->b_size - head);
}
