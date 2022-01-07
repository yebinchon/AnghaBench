
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef int block_t ;



__attribute__((used)) static inline block_t *block_end(struct buffer_head *bh)
{
 return (block_t *)((char*)bh->b_data + bh->b_size);
}
