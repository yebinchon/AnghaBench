
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_key {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct reiserfs_key ih_key; } ;


 TYPE_1__* item_head (struct buffer_head const*,int) ;

__attribute__((used)) static inline struct reiserfs_key *leaf_key(const struct buffer_head *bh,
         int item_num)
{
 return &item_head(bh, item_num)->ih_key;
}
