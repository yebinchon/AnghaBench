
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {void* b_data; } ;
struct block_head {int dummy; } ;



__attribute__((used)) static inline void *reiserfs_node_data(const struct buffer_head *bh)
{
 return bh->b_data + sizeof(struct block_head);
}
