
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;
struct buffer_head {int dummy; } ;


 struct reiserfs_key* reiserfs_node_data (struct buffer_head*) ;

__attribute__((used)) static inline struct reiserfs_key *internal_key(struct buffer_head *bh,
      int item_num)
{
 struct reiserfs_key *key = reiserfs_node_data(bh);

 return &key[item_num];
}
